.class public abstract Landroid/telecom/Connection;
.super Landroid/telecom/Conferenceable;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Connection$FailureSignalingConnection;,
        Landroid/telecom/Connection$CallFilteringCompletionInfo;,
        Landroid/telecom/Connection$VideoProvider;,
        Landroid/telecom/Connection$RttModifyStatus;,
        Landroid/telecom/Connection$RttTextStream;,
        Landroid/telecom/Connection$Listener;,
        Landroid/telecom/Connection$AudioCodec;,
        Landroid/telecom/Connection$VerificationStatus;,
        Landroid/telecom/Connection$ConnectionState;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CODEC_AMR:I = 0x1

.field public static final whitelist AUDIO_CODEC_AMR_WB:I = 0x2

.field public static final whitelist AUDIO_CODEC_EVRC:I = 0x4

.field public static final whitelist AUDIO_CODEC_EVRC_B:I = 0x5

.field public static final whitelist AUDIO_CODEC_EVRC_NW:I = 0x7

.field public static final whitelist AUDIO_CODEC_EVRC_WB:I = 0x6

.field public static final whitelist AUDIO_CODEC_EVS_FB:I = 0x14

.field public static final whitelist AUDIO_CODEC_EVS_NB:I = 0x11

.field public static final whitelist AUDIO_CODEC_EVS_SWB:I = 0x13

.field public static final whitelist AUDIO_CODEC_EVS_WB:I = 0x12

.field public static final whitelist AUDIO_CODEC_G711A:I = 0xd

.field public static final whitelist AUDIO_CODEC_G711AB:I = 0xf

.field public static final whitelist AUDIO_CODEC_G711U:I = 0xb

.field public static final whitelist AUDIO_CODEC_G722:I = 0xe

.field public static final whitelist AUDIO_CODEC_G723:I = 0xc

.field public static final whitelist AUDIO_CODEC_G729:I = 0x10

.field public static final whitelist AUDIO_CODEC_GSM_EFR:I = 0x8

.field public static final whitelist AUDIO_CODEC_GSM_FR:I = 0x9

.field public static final whitelist AUDIO_CODEC_GSM_HR:I = 0xa

.field public static final whitelist AUDIO_CODEC_NONE:I = 0x0

.field public static final whitelist AUDIO_CODEC_QCELP13K:I = 0x3

.field public static final whitelist CAPABILITY_ADD_PARTICIPANT:I = 0x4000000

.field public static final whitelist CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x800000

.field public static final whitelist CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final whitelist CAPABILITY_CAN_PULL_CALL:I = 0x1000000

.field public static final whitelist CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x400000

.field public static final whitelist CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final whitelist CAPABILITY_CONFERENCE_HAS_NO_CHILDREN:I = 0x200000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final whitelist CAPABILITY_HOLD:I = 0x1

.field public static final whitelist CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final whitelist CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final whitelist CAPABILITY_MUTE:I = 0x40

.field public static final whitelist CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT:I = 0x20000000

.field public static final whitelist CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final whitelist CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final whitelist CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CAPABILITY_SUPPORTS_RTT_REMOTE:I = 0x20000000

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final whitelist CAPABILITY_SUPPORT_DEFLECT:I = 0x2000000

.field public static final whitelist CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final whitelist CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final blacklist CAPABILITY_TRANSFER:I = 0x8000000

.field public static final blacklist CAPABILITY_TRANSFER_CONSULTATIVE:I = 0x10000000

.field public static final greylist-max-o CAPABILITY_UNUSED:I = 0x10

.field public static final greylist-max-o CAPABILITY_UNUSED_2:I = 0x4000

.field public static final greylist-max-o CAPABILITY_UNUSED_3:I = 0x8000

.field public static final greylist-max-o CAPABILITY_UNUSED_4:I = 0x10000

.field public static final greylist-max-o CAPABILITY_UNUSED_5:I = 0x20000

.field private static final blacklist DEBUG:Z = false

.field public static final whitelist EVENT_CALL_HOLD_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_HOLD_FAILED"

.field public static final whitelist EVENT_CALL_MERGE_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_MERGE_FAILED"

.field public static final whitelist EVENT_CALL_PULL_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_PULL_FAILED"

.field public static final blacklist EVENT_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.event.CALL_QUALITY_REPORT"

.field public static final whitelist EVENT_CALL_REMOTELY_HELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_HELD"

.field public static final whitelist EVENT_CALL_REMOTELY_UNHELD:Ljava/lang/String; = "android.telecom.event.CALL_REMOTELY_UNHELD"

.field public static final blacklist EVENT_CALL_RESUME_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_RESUME_FAILED"

.field public static final whitelist EVENT_CALL_SWITCH_FAILED:Ljava/lang/String; = "android.telecom.event.CALL_SWITCH_FAILED"

.field public static final whitelist EVENT_DEVICE_TO_DEVICE_MESSAGE:Ljava/lang/String; = "android.telecom.event.DEVICE_TO_DEVICE_MESSAGE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EVENT_HANDOVER_COMPLETE:Ljava/lang/String; = "android.telecom.event.HANDOVER_COMPLETE"

.field public static final greylist-max-o EVENT_HANDOVER_FAILED:Ljava/lang/String; = "android.telecom.event.HANDOVER_FAILED"

.field public static final whitelist EVENT_MERGE_COMPLETE:Ljava/lang/String; = "android.telecom.event.MERGE_COMPLETE"

.field public static final whitelist EVENT_MERGE_START:Ljava/lang/String; = "android.telecom.event.MERGE_START"

.field public static final whitelist EVENT_ON_HOLD_TONE_END:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_END"

.field public static final whitelist EVENT_ON_HOLD_TONE_START:Ljava/lang/String; = "android.telecom.event.ON_HOLD_TONE_START"

.field public static final whitelist EVENT_RTT_AUDIO_INDICATION_CHANGED:Ljava/lang/String; = "android.telecom.event.RTT_AUDIO_INDICATION_CHANGED"

.field public static final blacklist EXTRA_ADD_TO_CONFERENCE_ID:Ljava/lang/String; = "android.telecom.extra.ADD_TO_CONFERENCE_ID"

.field public static final whitelist EXTRA_ANSWERING_DROPS_FG_CALL:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL"

.field public static final whitelist EXTRA_ANSWERING_DROPS_FG_CALL_APP_NAME:Ljava/lang/String; = "android.telecom.extra.ANSWERING_DROPS_FG_CALL_APP_NAME"

.field public static final whitelist EXTRA_AUDIO_CODEC:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC"

.field public static final whitelist EXTRA_AUDIO_CODEC_BANDWIDTH_KHZ:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC_BANDWIDTH_KHZ"

.field public static final whitelist EXTRA_AUDIO_CODEC_BITRATE_KBPS:Ljava/lang/String; = "android.telecom.extra.AUDIO_CODEC_BITRATE_KBPS"

.field public static final blacklist EXTRA_CALLER_NUMBER_VERIFICATION_STATUS:Ljava/lang/String; = "android.telecom.extra.CALLER_NUMBER_VERIFICATION_STATUS"

.field public static final blacklist EXTRA_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.extra.CALL_QUALITY_REPORT"

.field public static final whitelist EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final whitelist EXTRA_CHILD_ADDRESS:Ljava/lang/String; = "android.telecom.extra.CHILD_ADDRESS"

.field public static final whitelist EXTRA_DEVICE_TO_DEVICE_MESSAGE_TYPE:Ljava/lang/String; = "android.telecom.extra.DEVICE_TO_DEVICE_MESSAGE_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DEVICE_TO_DEVICE_MESSAGE_VALUE:Ljava/lang/String; = "android.telecom.extra.DEVICE_TO_DEVICE_MESSAGE_VALUE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DISABLE_ADD_CALL:Ljava/lang/String; = "android.telecom.extra.DISABLE_ADD_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EXTRA_DISABLE_SWAP_CALL:Ljava/lang/String; = "android.telecom.extra.DISABLE_SWAP_CALL"

.field public static final blacklist EXTRA_IS_DEVICE_TO_DEVICE_COMMUNICATION_AVAILABLE:Ljava/lang/String; = "android.telecom.extra.IS_DEVICE_TO_DEVICE_COMMUNICATION_AVAILABLE"

.field public static final whitelist EXTRA_IS_RTT_AUDIO_PRESENT:Ljava/lang/String; = "android.telecom.extra.IS_RTT_AUDIO_PRESENT"

.field public static final whitelist EXTRA_LAST_FORWARDED_NUMBER:Ljava/lang/String; = "android.telecom.extra.LAST_FORWARDED_NUMBER"

.field public static final whitelist EXTRA_LAST_KNOWN_CELL_IDENTITY:Ljava/lang/String; = "android.telecom.extra.LAST_KNOWN_CELL_IDENTITY"

.field public static final greylist-max-o EXTRA_ORIGINAL_CONNECTION_ID:Ljava/lang/String; = "android.telecom.extra.ORIGINAL_CONNECTION_ID"

.field public static final blacklist EXTRA_REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME:Ljava/lang/String; = "android.telecom.extra.REMOTE_CONNECTION_ORIGINATING_PACKAGE_NAME"

.field public static final blacklist EXTRA_REMOTE_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.REMOTE_PHONE_ACCOUNT_HANDLE"

.field public static final whitelist EXTRA_SIP_INVITE:Ljava/lang/String; = "android.telecom.extra.SIP_INVITE"

.field private static final greylist-max-o PII_DEBUG:Z

.field public static final whitelist PROPERTY_ASSISTED_DIALING:I = 0x200

.field public static final whitelist PROPERTY_CROSS_SIM:I = 0x2000

.field public static final whitelist PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_GENERIC_CONFERENCE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_HAS_CDMA_VOICE_PRIVACY:I = 0x20

.field public static final whitelist PROPERTY_HIGH_DEF_AUDIO:I = 0x4

.field public static final whitelist PROPERTY_IS_ADHOC_CONFERENCE:I = 0x1000

.field public static final whitelist PROPERTY_IS_DOWNGRADED_CONFERENCE:I = 0x40
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_IS_EXTERNAL_CALL:I = 0x10

.field public static final blacklist PROPERTY_IS_PARTICIPANT_HOST:I = 0x4000

.field public static final whitelist PROPERTY_IS_RTT:I = 0x100

.field public static final whitelist PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL:I = 0x400

.field public static final whitelist PROPERTY_REMOTELY_HOSTED:I = 0x800
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROPERTY_SELF_MANAGED:I = 0x80

.field public static final whitelist PROPERTY_WIFI:I = 0x8

.field public static final whitelist STATE_ACTIVE:I = 0x4

.field public static final whitelist STATE_DIALING:I = 0x3

.field public static final whitelist STATE_DISCONNECTED:I = 0x6

.field public static final whitelist STATE_HOLDING:I = 0x5

.field public static final whitelist STATE_INITIALIZING:I = 0x0

.field public static final whitelist STATE_NEW:I = 0x1

.field public static final whitelist STATE_PULLING_CALL:I = 0x7

.field public static final whitelist STATE_RINGING:I = 0x2

.field public static final whitelist VERIFICATION_STATUS_FAILED:I = 0x2

.field public static final whitelist VERIFICATION_STATUS_NOT_VERIFIED:I = 0x0

.field public static final whitelist VERIFICATION_STATUS_PASSED:I = 0x1


# instance fields
.field private greylist-max-o mAddress:Landroid/net/Uri;

.field private greylist-max-o mAddressPresentation:I

.field private greylist-max-o mAudioModeIsVoip:Z

.field private greylist-max-o mCallAudioState:Landroid/telecom/CallAudioState;

.field private blacklist mCallDirection:I

.field private greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private greylist-max-o mCallerDisplayNamePresentation:I

.field private blacklist mCallerNumberVerificationStatus:I

.field private greylist-max-o mConference:Landroid/telecom/Conference;

.field private final greylist-max-o mConferenceDeathListener:Landroid/telecom/Conference$Listener;

.field private final greylist-max-o mConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mConnectElapsedTimeMillis:J

.field private greylist-max-o mConnectTimeMillis:J

.field private greylist-max-o mConnectionCapabilities:I

.field private final greylist-max-o mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private greylist-max-o mConnectionProperties:I

.field private greylist-max-o mConnectionService:Landroid/telecom/ConnectionService;

.field private greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mExtrasLock:Ljava/lang/Object;

.field private final greylist-max-o mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/telecom/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private greylist-max-o mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mRingbackRequested:Z

.field private greylist-max-o mState:I

.field private greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private greylist-max-o mSupportedAudioRoutes:I

.field private greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mUnmodifiableConferenceables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private greylist-max-o mVideoState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConferenceables(Landroid/telecom/Connection;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfireOnConferenceableConnectionsChanged(Landroid/telecom/Connection;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1091
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 4

    .line 2252
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 2176
    new-instance v0, Landroid/telecom/Connection$1;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$1;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 2185
    new-instance v0, Landroid/telecom/Connection$2;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$2;-><init>(Landroid/telecom/Connection;)V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    .line 2199
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    .line 2201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    .line 2202
    nop

    .line 2203
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    .line 2209
    iput v3, p0, Landroid/telecom/Connection;->mState:I

    .line 2215
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 2218
    const/16 v0, 0xf

    iput v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    .line 2221
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 2222
    iput-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    .line 2229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    .line 2234
    const/4 v0, -0x1

    iput v0, p0, Landroid/telecom/Connection;->mCallDirection:I

    .line 2252
    return-void
.end method

.method public static whitelist capabilitiesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "capabilities"    # I

    .line 1106
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o capabilitiesToStringInternal(IZ)Ljava/lang/String;
    .locals 3
    .param p0, "capabilities"    # I
    .param p1, "isLong"    # Z

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1123
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    if-eqz p1, :cond_0

    .line 1125
    const-string v1, "Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    :cond_0
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1129
    if-eqz p1, :cond_1

    const-string v1, " CAPABILITY_HOLD"

    goto :goto_0

    :cond_1
    const-string v1, " hld"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    :cond_2
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1132
    if-eqz p1, :cond_3

    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    goto :goto_1

    :cond_3
    const-string v1, " sup_hld"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    :cond_4
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 1135
    if-eqz p1, :cond_5

    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    goto :goto_2

    :cond_5
    const-string v1, " mrg_cnf"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    :cond_6
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 1138
    if-eqz p1, :cond_7

    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    goto :goto_3

    :cond_7
    const-string v1, " swp_cnf"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    :cond_8
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_a

    .line 1141
    if-eqz p1, :cond_9

    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    goto :goto_4

    :cond_9
    const-string v1, " txt"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    :cond_a
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_c

    .line 1144
    if-eqz p1, :cond_b

    const-string v1, " CAPABILITY_MUTE"

    goto :goto_5

    :cond_b
    const-string v1, " mut"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    :cond_c
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_e

    .line 1147
    if-eqz p1, :cond_d

    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    goto :goto_6

    :cond_d
    const-string v1, " mng_cnf"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    :cond_e
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_10

    .line 1150
    if-eqz p1, :cond_f

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    goto :goto_7

    :cond_f
    const-string v1, " VTlrx"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    :cond_10
    and-int/lit16 v1, p0, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_12

    .line 1153
    if-eqz p1, :cond_11

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    goto :goto_8

    :cond_11
    const-string v1, " VTltx"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    :cond_12
    and-int/lit16 v1, p0, 0x300

    const/16 v2, 0x300

    if-ne v1, v2, :cond_14

    .line 1157
    if-eqz p1, :cond_13

    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    goto :goto_9

    :cond_13
    const-string v1, " VTlbi"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    :cond_14
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_16

    .line 1160
    if-eqz p1, :cond_15

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    goto :goto_a

    :cond_15
    const-string v1, " VTrrx"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    :cond_16
    and-int/lit16 v1, p0, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_18

    .line 1163
    if-eqz p1, :cond_17

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    goto :goto_b

    :cond_17
    const-string v1, " VTrtx"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    :cond_18
    and-int/lit16 v1, p0, 0xc00

    const/16 v2, 0xc00

    if-ne v1, v2, :cond_1a

    .line 1167
    if-eqz p1, :cond_19

    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    goto :goto_c

    :cond_19
    const-string v1, " VTrbi"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    :cond_1a
    const/high16 v1, 0x800000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_1c

    .line 1171
    if-eqz p1, :cond_1b

    const-string v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    goto :goto_d

    :cond_1b
    const-string v1, " !v2a"

    :goto_d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    :cond_1c
    const/high16 v1, 0x40000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_1e

    .line 1174
    if-eqz p1, :cond_1d

    const-string v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    goto :goto_e

    :cond_1d
    const-string v1, " spd_aud"

    :goto_e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    :cond_1e
    const/high16 v1, 0x80000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_20

    .line 1177
    if-eqz p1, :cond_1f

    const-string v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    goto :goto_f

    :cond_1f
    const-string v1, " a2v"

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    :cond_20
    const/high16 v1, 0x100000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_22

    .line 1180
    if-eqz p1, :cond_21

    const-string v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    goto :goto_10

    :cond_21
    const-string v1, " paus_VT"

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    :cond_22
    const/high16 v1, 0x200000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_24

    .line 1184
    if-eqz p1, :cond_23

    const-string v1, " CAPABILITY_SINGLE_PARTY_CONFERENCE"

    goto :goto_11

    :cond_23
    const-string v1, " 1p_cnf"

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1186
    :cond_24
    const/high16 v1, 0x400000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_26

    .line 1188
    if-eqz p1, :cond_25

    const-string v1, " CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION"

    goto :goto_12

    :cond_25
    const-string v1, " rsp_by_con"

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    :cond_26
    const/high16 v1, 0x1000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_28

    .line 1191
    if-eqz p1, :cond_27

    const-string v1, " CAPABILITY_CAN_PULL_CALL"

    goto :goto_13

    :cond_27
    const-string v1, " pull"

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    :cond_28
    const/high16 v1, 0x2000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2a

    .line 1194
    if-eqz p1, :cond_29

    const-string v1, " CAPABILITY_SUPPORT_DEFLECT"

    goto :goto_14

    :cond_29
    const-string v1, " sup_def"

    :goto_14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    :cond_2a
    const/high16 v1, 0x4000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_2c

    .line 1197
    if-eqz p1, :cond_2b

    const-string v1, " CAPABILITY_ADD_PARTICIPANT"

    goto :goto_15

    :cond_2b
    const-string v1, " add_participant"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    :cond_2c
    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    const/high16 v2, 0x8000000

    if-ne v1, v2, :cond_2e

    .line 1200
    if-eqz p1, :cond_2d

    const-string v1, " CAPABILITY_TRANSFER"

    goto :goto_16

    :cond_2d
    const-string v1, " sup_trans"

    :goto_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    :cond_2e
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    const/high16 v2, 0x10000000

    if-ne v1, v2, :cond_30

    .line 1204
    if-eqz p1, :cond_2f

    const-string v1, " CAPABILITY_TRANSFER_CONSULTATIVE"

    goto :goto_17

    :cond_2f
    const-string v1, " sup_cTrans"

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    :cond_30
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    const/high16 v2, 0x20000000

    if-ne v1, v2, :cond_32

    .line 1208
    if-eqz p1, :cond_31

    const-string v1, " CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT"

    goto :goto_18

    :cond_31
    const-string v1, " sup_rtt"

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1210
    :cond_32
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o capabilitiesToStringShort(I)Ljava/lang/String;
    .locals 1
    .param p0, "capabilities"    # I

    .line 1118
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->capabilitiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final greylist-max-o clearConferenceableList()V
    .locals 4

    .line 3816
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    .line 3817
    .local v1, "c":Landroid/telecom/Conferenceable;
    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_0

    .line 3818
    move-object v2, v1

    check-cast v2, Landroid/telecom/Connection;

    .line 3819
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .end local v2    # "connection":Landroid/telecom/Connection;
    goto :goto_1

    .line 3820
    :cond_0
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_1

    .line 3821
    move-object v2, v1

    check-cast v2, Landroid/telecom/Conference;

    .line 3822
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v3, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_2

    .line 3820
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_1
    :goto_1
    nop

    .line 3824
    .end local v1    # "c":Landroid/telecom/Conferenceable;
    :goto_2
    goto :goto_0

    .line 3825
    :cond_2
    iget-object v0, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3826
    return-void
.end method

.method public static whitelist createCanceledConnection()Landroid/telecom/Connection;
    .locals 3

    .line 3800
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-direct {v0, v1}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method public static whitelist createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;
    .locals 1
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 3776
    new-instance v0, Landroid/telecom/Connection$FailureSignalingConnection;

    invoke-direct {v0, p0}, Landroid/telecom/Connection$FailureSignalingConnection;-><init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method

.method private final greylist-max-o fireConferenceChanged()V
    .locals 3

    .line 3810
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3811
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget-object v2, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V

    .line 3812
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 3813
    :cond_0
    return-void
.end method

.method private final greylist-max-o fireOnConferenceableConnectionsChanged()V
    .locals 3

    .line 3804
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3805
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {p0}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConferenceablesChanged(Landroid/telecom/Connection;Ljava/util/List;)V

    .line 3806
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 3807
    :cond_0
    return-void
.end method

.method public static whitelist propertiesToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "properties"    # I

    .line 1221
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o propertiesToStringInternal(IZ)Ljava/lang/String;
    .locals 3
    .param p0, "properties"    # I
    .param p1, "isLong"    # Z

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1237
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    if-eqz p1, :cond_0

    .line 1239
    const-string v1, "Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    :cond_0
    and-int/lit16 v1, p0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_2

    .line 1243
    if-eqz p1, :cond_1

    const-string v1, " PROPERTY_SELF_MANAGED"

    goto :goto_0

    :cond_1
    const-string v1, " self_mng"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    :cond_2
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1247
    if-eqz p1, :cond_3

    const-string v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    goto :goto_1

    :cond_3
    const-string v1, " ecbm"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    :cond_4
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6

    .line 1251
    if-eqz p1, :cond_5

    const-string v1, " PROPERTY_HIGH_DEF_AUDIO"

    goto :goto_2

    :cond_5
    const-string v1, " HD"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    :cond_6
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 1255
    if-eqz p1, :cond_7

    const-string v1, " PROPERTY_WIFI"

    goto :goto_3

    :cond_7
    const-string v1, " wifi"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    :cond_8
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 1259
    if-eqz p1, :cond_9

    const-string v1, " PROPERTY_GENERIC_CONFERENCE"

    goto :goto_4

    :cond_9
    const-string v1, " gen_conf"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    :cond_a
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_c

    .line 1263
    if-eqz p1, :cond_b

    const-string v1, " PROPERTY_IS_EXTERNAL_CALL"

    goto :goto_5

    :cond_b
    const-string v1, " xtrnl"

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    :cond_c
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_e

    .line 1267
    if-eqz p1, :cond_d

    const-string v1, " PROPERTY_HAS_CDMA_VOICE_PRIVACY"

    goto :goto_6

    :cond_d
    const-string v1, " priv"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    :cond_e
    and-int/lit16 v1, p0, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_10

    .line 1271
    if-eqz p1, :cond_f

    const-string v1, " PROPERTY_IS_RTT"

    goto :goto_7

    :cond_f
    const-string v1, " rtt"

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    :cond_10
    and-int/lit16 v1, p0, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_12

    .line 1276
    if-eqz p1, :cond_11

    const-string v1, " PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL"

    goto :goto_8

    :cond_11
    const-string v1, " ecall"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    :cond_12
    and-int/lit16 v1, p0, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_14

    .line 1280
    if-eqz p1, :cond_13

    const-string v1, " PROPERTY_REMOTELY_HOSTED"

    goto :goto_9

    :cond_13
    const-string v1, " remote_hst"

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    :cond_14
    and-int/lit16 v1, p0, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_16

    .line 1284
    if-eqz p1, :cond_15

    const-string v1, " PROPERTY_IS_ADHOC_CONFERENCE"

    goto :goto_a

    :cond_15
    const-string v1, " adhoc_conf"

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    :cond_16
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_18

    .line 1288
    if-eqz p1, :cond_17

    const-string v1, " PROPERTY_IS_DOWNGRADED_CONFERENCE"

    goto :goto_b

    :cond_17
    const-string v1, " dngrd_conf"

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    :cond_18
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o propertiesToStringShort(I)Ljava/lang/String;
    .locals 1
    .param p0, "properties"    # I

    .line 1232
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telecom/Connection;->propertiesToStringInternal(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o setState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 3735
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3736
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    if-eq v0, p1, :cond_0

    .line 3737
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Connection already DISCONNECTED; cannot transition out of this state."

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3738
    return-void

    .line 3740
    :cond_0
    if-eq v0, p1, :cond_1

    .line 3741
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string/jumbo v1, "setState: %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3742
    iput p1, p0, Landroid/telecom/Connection;->mState:I

    .line 3743
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onStateChanged(I)V

    .line 3744
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3745
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStateChanged(Landroid/telecom/Connection;I)V

    .line 3746
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 3748
    :cond_1
    return-void
.end method

.method public static whitelist stateToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "state"    # I

    .line 2510
    packed-switch p0, :pswitch_data_0

    .line 2528
    const-class v0, Landroid/telecom/Connection;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unknown state %d"

    invoke-static {v0, v2, v1}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2529
    const-string v0, "UNKNOWN"

    return-object v0

    .line 2520
    :pswitch_0
    const-string v0, "PULLING_CALL"

    return-object v0

    .line 2526
    :pswitch_1
    const-string v0, "DISCONNECTED"

    return-object v0

    .line 2524
    :pswitch_2
    const-string v0, "HOLDING"

    return-object v0

    .line 2522
    :pswitch_3
    const-string v0, "ACTIVE"

    return-object v0

    .line 2518
    :pswitch_4
    const-string v0, "DIALING"

    return-object v0

    .line 2516
    :pswitch_5
    const-string v0, "RINGING"

    return-object v0

    .line 2514
    :pswitch_6
    const-string v0, "NEW"

    return-object v0

    .line 2512
    :pswitch_7
    const-string v0, "INITIALIZING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .line 3711
    if-nez p0, :cond_0

    .line 3712
    const-string v0, ""

    return-object v0

    .line 3715
    :cond_0
    sget-boolean v0, Landroid/telecom/Connection;->PII_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3717
    return-object p0

    .line 3722
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3723
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3724
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 3725
    .local v2, "c":C
    const/16 v3, 0x2d

    if-eq v2, v3, :cond_3

    const/16 v3, 0x40

    if-eq v2, v3, :cond_3

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 3728
    :cond_2
    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 3726
    :cond_3
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3723
    .end local v2    # "c":C
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3731
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final greylist-max-o addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 2449
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2450
    return-object p0
.end method

.method public greylist-max-o checkImmutable()V
    .locals 0

    .line 3786
    return-void
.end method

.method public final whitelist destroy()V
    .locals 2

    .line 2818
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2819
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onDestroyed(Landroid/telecom/Connection;)V

    .line 2820
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2821
    :cond_0
    return-void
.end method

.method public final whitelist getAddress()Landroid/net/Uri;
    .locals 1

    .line 2273
    iget-object v0, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public final whitelist getAddressPresentation()I
    .locals 1

    .line 2281
    iget v0, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    return v0
.end method

.method public final whitelist getAudioModeIsVoip()Z
    .locals 1

    .line 2364
    iget-boolean v0, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    return v0
.end method

.method public final whitelist getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2329
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    if-nez v0, :cond_0

    .line 2330
    const/4 v0, 0x0

    return-object v0

    .line 2332
    :cond_0
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final whitelist getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .line 2341
    iget-object v0, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final blacklist getCallDirection()I
    .locals 1

    .line 3947
    iget v0, p0, Landroid/telecom/Connection;->mCallDirection:I

    return v0
.end method

.method public final whitelist getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .line 2288
    iget-object v0, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getCallerDisplayNamePresentation()I
    .locals 1

    .line 2296
    iget v0, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final whitelist getCallerNumberVerificationStatus()I
    .locals 1

    .line 3970
    iget v0, p0, Landroid/telecom/Connection;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public final whitelist getConference()Landroid/telecom/Conference;
    .locals 1

    .line 2349
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method public final whitelist getConferenceables()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;"
        }
    .end annotation

    .line 2953
    iget-object v0, p0, Landroid/telecom/Connection;->mUnmodifiableConferenceables:Ljava/util/List;

    return-object v0
.end method

.method public final whitelist getConnectTimeMillis()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2382
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getConnectionCapabilities()I
    .locals 1

    .line 2537
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    return v0
.end method

.method public final whitelist getConnectionProperties()I
    .locals 1

    .line 2544
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    return v0
.end method

.method public final whitelist getConnectionStartElapsedRealtimeMillis()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2406
    iget-wide v0, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    return-wide v0
.end method

.method public final whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .line 2472
    iget-object v0, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final whitelist getExtras()Landroid/os/Bundle;
    .locals 4

    .line 2431
    const/4 v0, 0x0

    .line 2432
    .local v0, "extras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2433
    :try_start_0
    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 2434
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    .line 2436
    :cond_0
    monitor-exit v1

    .line 2437
    return-object v0

    .line 2436
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3896
    iget-object v0, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public final whitelist getState()I
    .locals 1

    .line 2303
    iget v0, p0, Landroid/telecom/Connection;->mState:I

    return v0
.end method

.method public final whitelist getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .line 2413
    iget-object v0, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final greylist-max-o getSupportedAudioRoutes()I
    .locals 1

    .line 2553
    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    return v0
.end method

.method public final whitelist getTelecomCallId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2266
    iget-object v0, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .line 2696
    iget-object v0, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public final whitelist getVideoState()I
    .locals 1

    .line 2316
    iget v0, p0, Landroid/telecom/Connection;->mVideoState:I

    return v0
.end method

.method final greylist-max-o handleExtrasChanged(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3835
    const/4 v0, 0x0

    .line 3836
    .local v0, "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3837
    :try_start_0
    iput-object p1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 3838
    if-eqz p1, :cond_0

    .line 3839
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v0, v2

    .line 3841
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3842
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 3843
    return-void

    .line 3841
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public whitelist handleRttUpgradeResponse(Landroid/telecom/Connection$RttTextStream;)V
    .locals 0
    .param p1, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 3575
    return-void
.end method

.method public final whitelist isRingbackRequested()Z
    .locals 1

    .line 2357
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    return v0
.end method

.method synthetic blacklist lambda$sendRemoteRttRequest$3$android-telecom-Connection(Landroid/telecom/Connection$Listener;)V
    .locals 0
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 3191
    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRemoteRttRequest(Landroid/telecom/Connection;)V

    return-void
.end method

.method synthetic blacklist lambda$sendRttInitiationFailure$1$android-telecom-Connection(ILandroid/telecom/Connection$Listener;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "l"    # Landroid/telecom/Connection$Listener;

    .line 3175
    invoke-virtual {p2, p0, p1}, Landroid/telecom/Connection$Listener;->onRttInitiationFailure(Landroid/telecom/Connection;I)V

    return-void
.end method

.method synthetic blacklist lambda$sendRttInitiationSuccess$0$android-telecom-Connection(Landroid/telecom/Connection$Listener;)V
    .locals 0
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 3164
    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttInitiationSuccess(Landroid/telecom/Connection;)V

    return-void
.end method

.method synthetic blacklist lambda$sendRttSessionRemotelyTerminated$2$android-telecom-Connection(Landroid/telecom/Connection$Listener;)V
    .locals 0
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 3183
    invoke-virtual {p1, p0}, Landroid/telecom/Connection$Listener;->onRttSessionRemotelyTerminated(Landroid/telecom/Connection;)V

    return-void
.end method

.method public final whitelist notifyConferenceMergeFailed()V
    .locals 2

    .line 3850
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3851
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConferenceMergeFailed(Landroid/telecom/Connection;)V

    .line 3852
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 3853
    :cond_0
    return-void
.end method

.method public greylist-max-o notifyPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p1, "pHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 3862
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3863
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPhoneAccountChanged(Landroid/telecom/Connection;Landroid/telecom/PhoneAccountHandle;)V

    .line 3864
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 3865
    :cond_0
    return-void
.end method

.method public whitelist onAbort()V
    .locals 0

    .line 3281
    return-void
.end method

.method public whitelist onAddConferenceParticipants(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 3276
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    return-void
.end method

.method public whitelist onAnswer()V
    .locals 1

    .line 3333
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 3334
    return-void
.end method

.method public whitelist onAnswer(I)V
    .locals 0
    .param p1, "videoState"    # I

    .line 3312
    return-void
.end method

.method public whitelist onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3203
    return-void
.end method

.method public whitelist onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 3210
    return-void
.end method

.method public whitelist onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3452
    return-void
.end method

.method public whitelist onCallFilteringCompleted(Landroid/telecom/Connection$CallFilteringCompletionInfo;)V
    .locals 0
    .param p1, "callFilteringCompletionInfo"    # Landroid/telecom/Connection$CallFilteringCompletionInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3706
    return-void
.end method

.method public whitelist onDeflect(Landroid/net/Uri;)V
    .locals 0
    .param p1, "address"    # Landroid/net/Uri;

    .line 3340
    return-void
.end method

.method public whitelist onDisconnect()V
    .locals 0

    .line 3255
    return-void
.end method

.method public greylist-max-o onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    .line 3264
    return-void
.end method

.method public whitelist onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3473
    return-void
.end method

.method public whitelist onHandoverComplete()V
    .locals 0

    .line 3461
    return-void
.end method

.method public whitelist onHold()V
    .locals 0

    .line 3286
    return-void
.end method

.method public whitelist onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    .line 3245
    return-void
.end method

.method public whitelist onPostDialContinue(Z)V
    .locals 0
    .param p1, "proceed"    # Z

    .line 3421
    return-void
.end method

.method public whitelist onPullExternalCall()V
    .locals 0

    .line 3434
    return-void
.end method

.method public whitelist onReject()V
    .locals 0

    .line 3360
    return-void
.end method

.method public whitelist onReject(I)V
    .locals 0
    .param p1, "rejectReason"    # I

    .line 3371
    return-void
.end method

.method public whitelist onReject(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyMessage"    # Ljava/lang/String;

    .line 3377
    return-void
.end method

.method public whitelist onSeparate()V
    .locals 0

    .line 3269
    return-void
.end method

.method public whitelist onShowIncomingCallUi()V
    .locals 0

    .line 3549
    return-void
.end method

.method public whitelist onSilence()V
    .locals 0

    .line 3416
    return-void
.end method

.method public whitelist onStartRtt(Landroid/telecom/Connection$RttTextStream;)V
    .locals 0
    .param p1, "rttTextStream"    # Landroid/telecom/Connection$RttTextStream;

    .line 3559
    return-void
.end method

.method public whitelist onStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .line 3238
    return-void
.end method

.method public whitelist onStopDtmfTone()V
    .locals 0

    .line 3250
    return-void
.end method

.method public whitelist onStopRtt()V
    .locals 0

    .line 3565
    return-void
.end method

.method public whitelist onTrackedByNonUiService(Z)V
    .locals 0
    .param p1, "isTracked"    # Z

    .line 3230
    return-void
.end method

.method public blacklist onTransfer(Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "number"    # Landroid/net/Uri;
    .param p2, "isConfirmationRequired"    # Z

    .line 3390
    return-void
.end method

.method public blacklist onTransfer(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "otherConnection"    # Landroid/telecom/Connection;

    .line 3397
    return-void
.end method

.method public whitelist onUnhold()V
    .locals 0

    .line 3291
    return-void
.end method

.method public whitelist onUsingAlternativeUi(Z)V
    .locals 0
    .param p1, "isUsingAlternativeUi"    # Z

    .line 3221
    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3069
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3070
    if-nez p1, :cond_0

    .line 3071
    return-void

    .line 3076
    :cond_0
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3077
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 3078
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    .line 3080
    :cond_1
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3081
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3082
    .local v1, "listenerExtras":Landroid/os/Bundle;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3083
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    .line 3086
    .local v2, "l":Landroid/telecom/Connection$Listener;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p0, v3}, Landroid/telecom/Connection$Listener;->onExtrasChanged(Landroid/telecom/Connection;Landroid/os/Bundle;)V

    .line 3087
    .end local v2    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 3088
    :cond_2
    return-void

    .line 3082
    .end local v1    # "listenerExtras":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final greylist-max-o removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "l"    # Landroid/telecom/Connection$Listener;

    .line 2462
    if-eqz p1, :cond_0

    .line 2463
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2465
    :cond_0
    return-object p0
.end method

.method public final whitelist removeExtras(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3096
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/Connection;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3097
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 3098
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3099
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/Connection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3100
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 3102
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3103
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3104
    .local v0, "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection$Listener;

    .line 3105
    .local v2, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v2, p0, v0}, Landroid/telecom/Connection$Listener;->onExtrasRemoved(Landroid/telecom/Connection;Ljava/util/List;)V

    .line 3106
    .end local v2    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_1

    .line 3107
    :cond_1
    return-void

    .line 3102
    .end local v0    # "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .line 3115
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    .line 3116
    return-void
.end method

.method public whitelist requestBluetoothAudio(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4
    .param p1, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;

    .line 3152
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3153
    .local v1, "l":Landroid/telecom/Connection$Listener;
    const/4 v2, 0x2

    .line 3154
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 3153
    invoke-virtual {v1, p0, v2, v3}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V

    .line 3155
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 3156
    :cond_0
    return-void
.end method

.method public final greylist-max-o resetConference()V
    .locals 2

    .line 3007
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-eqz v0, :cond_0

    .line 3008
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Conference reset"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3009
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 3010
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 3012
    :cond_0
    return-void
.end method

.method public final whitelist resetConnectionTime()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2944
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2945
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Connection$Listener;->onConnectionTimeReset(Landroid/telecom/Connection;)V

    .line 2946
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2947
    :cond_0
    return-void
.end method

.method public whitelist sendConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 3937
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3938
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onConnectionEvent(Landroid/telecom/Connection;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3939
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 3940
    :cond_0
    return-void
.end method

.method public final whitelist sendRemoteRttRequest()V
    .locals 2

    .line 3191
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3192
    return-void
.end method

.method public final whitelist sendRttInitiationFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 3175
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/telecom/Connection$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/Connection;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3176
    return-void
.end method

.method public final whitelist sendRttInitiationSuccess()V
    .locals 2

    .line 3164
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3165
    return-void
.end method

.method public final whitelist sendRttSessionRemotelyTerminated()V
    .locals 2

    .line 3183
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    new-instance v1, Landroid/telecom/Connection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/telecom/Connection$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/Connection;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 3184
    return-void
.end method

.method public final whitelist setActive()V
    .locals 1

    .line 2628
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2629
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->setRingbackRequested(Z)V

    .line 2630
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2631
    return-void
.end method

.method public final whitelist setAddress(Landroid/net/Uri;I)V
    .locals 2
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .line 2573
    iput-object p1, p0, Landroid/telecom/Connection;->mAddress:Landroid/net/Uri;

    .line 2574
    iput p2, p0, Landroid/telecom/Connection;->mAddressPresentation:I

    .line 2575
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2576
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V

    .line 2577
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2578
    :cond_0
    return-void
.end method

.method public final whitelist setAudioModeIsVoip(Z)V
    .locals 2
    .param p1, "isVoip"    # Z

    .line 2829
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2830
    iput-boolean p1, p0, Landroid/telecom/Connection;->mAudioModeIsVoip:Z

    .line 2831
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2832
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V

    .line 2833
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2834
    :cond_0
    return-void
.end method

.method public final whitelist setAudioRoute(I)V
    .locals 3
    .param p1, "route"    # I

    .line 3132
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 3133
    .local v1, "l":Landroid/telecom/Connection$Listener;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Landroid/telecom/Connection$Listener;->onAudioRouteChanged(Landroid/telecom/Connection;ILjava/lang/String;)V

    .line 3134
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 3135
    :cond_0
    return-void
.end method

.method final greylist-max-o setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 2
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .line 2498
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2499
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "setAudioState %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2500
    iput-object p1, p0, Landroid/telecom/Connection;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 2501
    invoke-virtual {p0}, Landroid/telecom/Connection;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 2502
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 2503
    return-void
.end method

.method public whitelist setCallDirection(I)V
    .locals 0
    .param p1, "callDirection"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3961
    iput p1, p0, Landroid/telecom/Connection;->mCallDirection:I

    .line 3962
    return-void
.end method

.method public final whitelist setCallerDisplayName(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .line 2588
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2598
    iput-object p1, p0, Landroid/telecom/Connection;->mCallerDisplayName:Ljava/lang/String;

    .line 2599
    iput p2, p0, Landroid/telecom/Connection;->mCallerDisplayNamePresentation:I

    .line 2600
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2601
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1, p2}, Landroid/telecom/Connection$Listener;->onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V

    .line 2602
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2603
    :cond_0
    return-void
.end method

.method public final whitelist setCallerNumberVerificationStatus(I)V
    .locals 0
    .param p1, "callerNumberVerificationStatus"    # I

    .line 3983
    iput p1, p0, Landroid/telecom/Connection;->mCallerNumberVerificationStatus:I

    .line 3984
    return-void
.end method

.method public final greylist-max-o setConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .line 2990
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2992
    iget-object v0, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    if-nez v0, :cond_1

    .line 2993
    iput-object p1, p0, Landroid/telecom/Connection;->mConference:Landroid/telecom/Conference;

    .line 2994
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/telecom/ConnectionService;->containsConference(Landroid/telecom/Conference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2995
    invoke-direct {p0}, Landroid/telecom/Connection;->fireConferenceChanged()V

    .line 2997
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2999
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .line 2898
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2899
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 2900
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    .line 2903
    .local v1, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2904
    iget-object v2, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v1, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 2905
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2907
    .end local v1    # "c":Landroid/telecom/Connection;
    :cond_0
    goto :goto_0

    .line 2908
    :cond_1
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 2909
    return-void
.end method

.method public final whitelist setConferenceables(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Conferenceable;",
            ">;)V"
        }
    .end annotation

    .line 2918
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    invoke-direct {p0}, Landroid/telecom/Connection;->clearConferenceableList()V

    .line 2919
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conferenceable;

    .line 2922
    .local v1, "c":Landroid/telecom/Conferenceable;
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2923
    instance-of v2, v1, Landroid/telecom/Connection;

    if-eqz v2, :cond_0

    .line 2924
    move-object v2, v1

    check-cast v2, Landroid/telecom/Connection;

    .line 2925
    .local v2, "connection":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/Connection;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .end local v2    # "connection":Landroid/telecom/Connection;
    goto :goto_1

    .line 2926
    :cond_0
    instance-of v2, v1, Landroid/telecom/Conference;

    if-eqz v2, :cond_1

    .line 2927
    move-object v2, v1

    check-cast v2, Landroid/telecom/Conference;

    .line 2928
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v3, p0, Landroid/telecom/Connection;->mConferenceDeathListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {v2, v3}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    goto :goto_2

    .line 2926
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_1
    :goto_1
    nop

    .line 2930
    :goto_2
    iget-object v2, p0, Landroid/telecom/Connection;->mConferenceables:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2932
    .end local v1    # "c":Landroid/telecom/Conferenceable;
    :cond_2
    goto :goto_0

    .line 2933
    :cond_3
    invoke-direct {p0}, Landroid/telecom/Connection;->fireOnConferenceableConnectionsChanged()V

    .line 2934
    return-void
.end method

.method public final whitelist setConnectTimeMillis(J)V
    .locals 0
    .param p1, "connectTimeMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2853
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectTimeMillis:J

    .line 2854
    return-void
.end method

.method public final whitelist setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    .line 2768
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2769
    iget v0, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    if-eq v0, p1, :cond_0

    .line 2770
    iput p1, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    .line 2771
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2772
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionCapabilities:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Connection;I)V

    .line 2773
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2775
    :cond_0
    return-void
.end method

.method public final whitelist setConnectionProperties(I)V
    .locals 3
    .param p1, "connectionProperties"    # I

    .line 2783
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2784
    iget v0, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    if-eq v0, p1, :cond_0

    .line 2785
    iput p1, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    .line 2786
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2787
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mConnectionProperties:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Connection;I)V

    .line 2788
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2790
    :cond_0
    return-void
.end method

.method public final greylist-max-o setConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .line 2960
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2961
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eqz v0, :cond_0

    .line 2962
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Trying to set ConnectionService on a connection which is already associated with another ConnectionService."

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2965
    :cond_0
    iput-object p1, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    .line 2967
    :goto_0
    return-void
.end method

.method public final whitelist setConnectionStartElapsedRealtimeMillis(J)V
    .locals 0
    .param p1, "connectElapsedTimeMillis"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2876
    iput-wide p1, p0, Landroid/telecom/Connection;->mConnectElapsedTimeMillis:J

    .line 2877
    return-void
.end method

.method public final whitelist setDialing()V
    .locals 1

    .line 2661
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2662
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2663
    return-void
.end method

.method public final whitelist setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 2
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .line 2706
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2707
    iput-object p1, p0, Landroid/telecom/Connection;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 2708
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2709
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string v1, "Disconnected with cause %s"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2710
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2711
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V

    .line 2712
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2713
    :cond_0
    return-void
.end method

.method public final whitelist setExtras(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 3029
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 3032
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->putExtras(Landroid/os/Bundle;)V

    .line 3036
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 3037
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3038
    .local v0, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3039
    .local v2, "oldKey":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3040
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3042
    .end local v2    # "oldKey":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 3043
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3044
    invoke-virtual {p0, v0}, Landroid/telecom/Connection;->removeExtras(Ljava/util/List;)V

    .line 3050
    .end local v0    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v0, :cond_4

    .line 3051
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    .line 3053
    :cond_4
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3054
    if-eqz p1, :cond_5

    .line 3055
    iget-object v0, p0, Landroid/telecom/Connection;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3057
    :cond_5
    return-void
.end method

.method public final whitelist setInitialized()V
    .locals 1

    .line 2653
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2654
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2655
    return-void
.end method

.method public final whitelist setInitializing()V
    .locals 1

    .line 2645
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2646
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2647
    return-void
.end method

.method public final whitelist setNextPostDialChar(C)V
    .locals 2
    .param p1, "nextChar"    # C

    .line 2740
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2741
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2742
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialChar(Landroid/telecom/Connection;C)V

    .line 2743
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2744
    :cond_0
    return-void
.end method

.method public final whitelist setOnHold()V
    .locals 1

    .line 2679
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2680
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2681
    return-void
.end method

.method public whitelist setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3878
    iget-object v0, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eq v0, p1, :cond_0

    .line 3879
    iput-object p1, p0, Landroid/telecom/Connection;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 3880
    invoke-virtual {p0, p1}, Landroid/telecom/Connection;->notifyPhoneAccountChanged(Landroid/telecom/PhoneAccountHandle;)V

    .line 3882
    :cond_0
    return-void
.end method

.method public final whitelist setPostDialWait(Ljava/lang/String;)V
    .locals 2
    .param p1, "remaining"    # Ljava/lang/String;

    .line 2726
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2727
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2728
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V

    .line 2729
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2730
    :cond_0
    return-void
.end method

.method public final whitelist setPulling()V
    .locals 1

    .line 2671
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2672
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2673
    return-void
.end method

.method public final whitelist setRingbackRequested(Z)V
    .locals 2
    .param p1, "ringback"    # Z

    .line 2753
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2754
    iget-boolean v0, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    if-eq v0, p1, :cond_0

    .line 2755
    iput-boolean p1, p0, Landroid/telecom/Connection;->mRingbackRequested:Z

    .line 2756
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2757
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onRingbackRequested(Landroid/telecom/Connection;Z)V

    .line 2758
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2760
    :cond_0
    return-void
.end method

.method public final whitelist setRinging()V
    .locals 1

    .line 2637
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2638
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/telecom/Connection;->setState(I)V

    .line 2639
    return-void
.end method

.method public final whitelist setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 2
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .line 2885
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2886
    iput-object p1, p0, Landroid/telecom/Connection;->mStatusHints:Landroid/telecom/StatusHints;

    .line 2887
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2888
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V

    .line 2889
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2890
    :cond_0
    return-void
.end method

.method public final greylist-max-o setSupportedAudioRoutes(I)V
    .locals 3
    .param p1, "supportedAudioRoutes"    # I

    .line 2800
    and-int/lit8 v0, p1, 0x9

    if-eqz v0, :cond_1

    .line 2806
    iget v0, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    if-eq v0, p1, :cond_0

    .line 2807
    iput p1, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    .line 2808
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2809
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mSupportedAudioRoutes:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onSupportedAudioRoutesChanged(Landroid/telecom/Connection;I)V

    .line 2810
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2812
    :cond_0
    return-void

    .line 2802
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "supported audio routes must include either speaker or earpiece"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTelecomCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2488
    iput-object p1, p0, Landroid/telecom/Connection;->mTelecomCallId:Ljava/lang/String;

    .line 2489
    return-void
.end method

.method public final whitelist setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 2
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .line 2688
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2689
    iput-object p1, p0, Landroid/telecom/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 2690
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2691
    .local v1, "l":Landroid/telecom/Connection$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V

    .line 2692
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2693
    :cond_0
    return-void
.end method

.method public final whitelist setVideoState(I)V
    .locals 3
    .param p1, "videoState"    # I

    .line 2615
    invoke-virtual {p0}, Landroid/telecom/Connection;->checkImmutable()V

    .line 2616
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "setVideoState %d"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2617
    iput p1, p0, Landroid/telecom/Connection;->mVideoState:I

    .line 2618
    iget-object v0, p0, Landroid/telecom/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection$Listener;

    .line 2619
    .local v1, "l":Landroid/telecom/Connection$Listener;
    iget v2, p0, Landroid/telecom/Connection;->mVideoState:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Connection$Listener;->onVideoStateChanged(Landroid/telecom/Connection;I)V

    .line 2620
    .end local v1    # "l":Landroid/telecom/Connection$Listener;
    goto :goto_0

    .line 2621
    :cond_0
    return-void
.end method

.method public final greylist-max-o unsetConnectionService(Landroid/telecom/ConnectionService;)V
    .locals 3
    .param p1, "connectionService"    # Landroid/telecom/ConnectionService;

    .line 2973
    iget-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    if-eq v0, p1, :cond_0

    .line 2974
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Trying to remove ConnectionService from a Connection that does not belong to the ConnectionService."

    invoke-static {p0, v0, v2, v1}, Landroid/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2977
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Connection;->mConnectionService:Landroid/telecom/ConnectionService;

    .line 2979
    :goto_0
    return-void
.end method
