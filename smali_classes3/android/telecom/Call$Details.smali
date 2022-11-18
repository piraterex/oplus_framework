.class public Landroid/telecom/Call$Details;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Details$CallDirection;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_ADD_PARTICIPANT:I = 0x2000000

.field public static final whitelist CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO:I = 0x400000

.field public static final whitelist CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final whitelist CAPABILITY_CAN_PULL_CALL:I = 0x800000

.field public static final greylist-max-o CAPABILITY_CAN_SEND_RESPONSE_VIA_CONNECTION:I = 0x200000

.field public static final greylist-max-p CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final whitelist CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final whitelist CAPABILITY_HOLD:I = 0x1

.field public static final whitelist CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final whitelist CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final whitelist CAPABILITY_MUTE:I = 0x40

.field public static final whitelist CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT:I = 0x10000000

.field public static final whitelist CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final whitelist CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final greylist-max-o CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000

.field public static final blacklist CAPABILITY_SUPPORTS_RTT_REMOTE:I = 0x10000000

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final whitelist CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final whitelist CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final whitelist CAPABILITY_SUPPORT_DEFLECT:I = 0x1000000

.field public static final whitelist CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final whitelist CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final blacklist CAPABILITY_TRANSFER:I = 0x4000000

.field public static final blacklist CAPABILITY_TRANSFER_CONSULTATIVE:I = 0x8000000

.field public static final greylist-max-o CAPABILITY_UNUSED_1:I = 0x10

.field public static final whitelist DIRECTION_INCOMING:I = 0x0

.field public static final whitelist DIRECTION_OUTGOING:I = 0x1

.field public static final whitelist DIRECTION_UNKNOWN:I = -0x1

.field public static final whitelist PROPERTY_ASSISTED_DIALING:I = 0x200

.field public static final whitelist PROPERTY_CONFERENCE:I = 0x1

.field public static final whitelist PROPERTY_CROSS_SIM:I = 0x4000

.field public static final whitelist PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x4

.field public static final whitelist PROPERTY_ENTERPRISE_CALL:I = 0x20

.field public static final whitelist PROPERTY_GENERIC_CONFERENCE:I = 0x2

.field public static final whitelist PROPERTY_HAS_CDMA_VOICE_PRIVACY:I = 0x80

.field public static final whitelist PROPERTY_HIGH_DEF_AUDIO:I = 0x10

.field public static final whitelist PROPERTY_IS_ADHOC_CONFERENCE:I = 0x2000

.field public static final whitelist PROPERTY_IS_EXTERNAL_CALL:I = 0x40

.field public static final whitelist PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL:I = 0x800

.field public static final whitelist PROPERTY_RTT:I = 0x400

.field public static final whitelist PROPERTY_SELF_MANAGED:I = 0x100

.field public static final whitelist PROPERTY_VOIP_AUDIO_MODE:I = 0x1000

.field public static final whitelist PROPERTY_WIFI:I = 0x8


# instance fields
.field private final greylist-max-o mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final greylist-max-o mCallCapabilities:I

.field private final blacklist mCallDirection:I

.field private final greylist-max-o mCallProperties:I

.field private final greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private final greylist-max-o mCallerDisplayNamePresentation:I

.field private final blacklist mCallerNumberVerificationStatus:I

.field private final greylist-max-o mConnectTimeMillis:J

.field private final blacklist mContactDisplayName:Ljava/lang/String;

.field private final greylist-max-o mCreationTimeMillis:J

.field private final greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final greylist-max-o mHandle:Landroid/net/Uri;

.field private final greylist-max-o mHandlePresentation:I

.field private final greylist-max-o mIntentExtras:Landroid/os/Bundle;

.field private final blacklist mState:I

.field private final greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private final greylist-max-o mSupportedAudioRoutes:I

.field private final greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mVideoState:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/String;II)V
    .locals 16
    .param p1, "state"    # I
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "handle"    # Landroid/net/Uri;
    .param p4, "handlePresentation"    # I
    .param p5, "callerDisplayName"    # Ljava/lang/String;
    .param p6, "callerDisplayNamePresentation"    # I
    .param p7, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p8, "capabilities"    # I
    .param p9, "properties"    # I
    .param p10, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p11, "connectTimeMillis"    # J
    .param p13, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p14, "videoState"    # I
    .param p15, "statusHints"    # Landroid/telecom/StatusHints;
    .param p16, "extras"    # Landroid/os/Bundle;
    .param p17, "intentExtras"    # Landroid/os/Bundle;
    .param p18, "creationTimeMillis"    # J
    .param p20, "contactDisplayName"    # Ljava/lang/String;
    .param p21, "callDirection"    # I
    .param p22, "callerNumberVerificationStatus"    # I

    .line 1196
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 724
    const/16 v1, 0xf

    iput v1, v0, Landroid/telecom/Call$Details;->mSupportedAudioRoutes:I

    .line 1197
    move/from16 v1, p1

    iput v1, v0, Landroid/telecom/Call$Details;->mState:I

    .line 1198
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/telecom/Call$Details;->mTelecomCallId:Ljava/lang/String;

    .line 1199
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    .line 1200
    move/from16 v4, p4

    iput v4, v0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    .line 1201
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    .line 1202
    move/from16 v6, p6

    iput v6, v0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    .line 1203
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 1204
    move/from16 v8, p8

    iput v8, v0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    .line 1205
    move/from16 v9, p9

    iput v9, v0, Landroid/telecom/Call$Details;->mCallProperties:I

    .line 1206
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1207
    move-wide/from16 v11, p11

    iput-wide v11, v0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    .line 1208
    move-object/from16 v13, p13

    iput-object v13, v0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 1209
    move/from16 v14, p14

    iput v14, v0, Landroid/telecom/Call$Details;->mVideoState:I

    .line 1210
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    .line 1211
    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    .line 1212
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    .line 1213
    move-wide/from16 v1, p18

    iput-wide v1, v0, Landroid/telecom/Call$Details;->mCreationTimeMillis:J

    .line 1214
    move-object/from16 v1, p20

    iput-object v1, v0, Landroid/telecom/Call$Details;->mContactDisplayName:Ljava/lang/String;

    .line 1215
    move/from16 v2, p21

    iput v2, v0, Landroid/telecom/Call$Details;->mCallDirection:I

    .line 1216
    move/from16 v1, p22

    iput v1, v0, Landroid/telecom/Call$Details;->mCallerNumberVerificationStatus:I

    .line 1217
    return-void
.end method

.method public static whitelist can(II)Z
    .locals 1
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .line 745
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist capabilitiesToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "capabilities"    # I

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 766
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 768
    const-string v1, " CAPABILITY_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 771
    const-string v1, " CAPABILITY_SUPPORT_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 774
    const-string v1, " CAPABILITY_MERGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :cond_2
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 777
    const-string v1, " CAPABILITY_SWAP_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    :cond_3
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 780
    const-string v1, " CAPABILITY_RESPOND_VIA_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    :cond_4
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 783
    const-string v1, " CAPABILITY_MUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    :cond_5
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 786
    const-string v1, " CAPABILITY_MANAGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_6
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 789
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :cond_7
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 792
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    :cond_8
    const/16 v1, 0x300

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 795
    const-string v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    :cond_9
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 798
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    :cond_a
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 801
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    :cond_b
    const/high16 v1, 0x400000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 804
    const-string v1, " CAPABILITY_CANNOT_DOWNGRADE_VIDEO_TO_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    :cond_c
    const/16 v1, 0xc00

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 807
    const-string v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 809
    :cond_d
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 810
    const-string v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :cond_e
    const/high16 v1, 0x80000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 813
    const-string v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    :cond_f
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 816
    const-string v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    :cond_10
    const/high16 v1, 0x800000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 819
    const-string v1, " CAPABILITY_CAN_PULL_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :cond_11
    const/high16 v1, 0x1000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 822
    const-string v1, " CAPABILITY_SUPPORT_DEFLECT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    :cond_12
    const/high16 v1, 0x2000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 825
    const-string v1, " CAPABILITY_ADD_PARTICIPANT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    :cond_13
    const/high16 v1, 0x4000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 828
    const-string v1, " CAPABILITY_TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    :cond_14
    const/high16 v1, 0x8000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 831
    const-string v1, " CAPABILITY_TRANSFER_CONSULTATIVE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    :cond_15
    const/high16 v1, 0x10000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 834
    const-string v2, " CAPABILITY_REMOTE_PARTY_SUPPORTS_RTT"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :cond_16
    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 839
    const-string v1, " CAPABILITY_SUPPORTS_RTT_REMOTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    :cond_17
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;
    .locals 24
    .param p0, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .line 1221
    new-instance v23, Landroid/telecom/Call$Details;

    move-object/from16 v0, v23

    .line 1222
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v1

    .line 1223
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1224
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getHandle()Landroid/net/Uri;

    move-result-object v3

    .line 1225
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getHandlePresentation()I

    move-result v4

    .line 1226
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 1227
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCallerDisplayNamePresentation()I

    move-result v6

    .line 1228
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v7

    .line 1229
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCapabilities()I

    move-result v8

    .line 1230
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getProperties()I

    move-result v9

    .line 1231
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v10

    .line 1232
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getConnectTimeMillis()J

    move-result-wide v11

    .line 1233
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v13

    .line 1234
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getVideoState()I

    move-result v14

    .line 1235
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v15

    .line 1236
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 1237
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 1238
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCreationTimeMillis()J

    move-result-wide v18

    .line 1239
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getContactDisplayName()Ljava/lang/String;

    move-result-object v20

    .line 1240
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCallDirection()I

    move-result v21

    .line 1241
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ParcelableCall;->getCallerNumberVerificationStatus()I

    move-result v22

    invoke-direct/range {v0 .. v22}, Landroid/telecom/Call$Details;-><init>(ILjava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/String;II)V

    .line 1221
    return-object v23
.end method

.method public static whitelist hasProperty(II)Z
    .locals 1
    .param p0, "properties"    # I
    .param p1, "property"    # I

    .line 854
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static whitelist propertiesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "properties"    # I

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "[Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 877
    const-string v1, " PROPERTY_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 880
    const-string v1, " PROPERTY_GENERIC_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    :cond_1
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 883
    const-string v1, " PROPERTY_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    :cond_2
    const/16 v1, 0x10

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 886
    const-string v1, " PROPERTY_HIGH_DEF_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 888
    :cond_3
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 889
    const-string v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    :cond_4
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 892
    const-string v1, " PROPERTY_IS_EXTERNAL_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    :cond_5
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 895
    const-string v1, " PROPERTY_HAS_CDMA_VOICE_PRIVACY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    :cond_6
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 898
    const-string v1, " PROPERTY_ASSISTED_DIALING_USED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    :cond_7
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 901
    const-string v1, " PROPERTY_NETWORK_IDENTIFIED_EMERGENCY_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    :cond_8
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 904
    const-string v1, " PROPERTY_RTT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    :cond_9
    const/16 v1, 0x1000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 907
    const-string v1, " PROPERTY_VOIP_AUDIO_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :cond_a
    const/16 v1, 0x2000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 910
    const-string v1, " PROPERTY_IS_ADHOC_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    :cond_b
    const/16 v1, 0x4000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 913
    const-string v1, " PROPERTY_CROSS_SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    :cond_c
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist can(I)Z
    .locals 1
    .param p1, "capability"    # I

    .line 755
    iget v0, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1124
    instance-of v0, p1, Landroid/telecom/Call$Details;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1125
    move-object v0, p1

    check-cast v0, Landroid/telecom/Call$Details;

    .line 1126
    .local v0, "d":Landroid/telecom/Call$Details;
    iget v2, p0, Landroid/telecom/Call$Details;->mState:I

    .line 1127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    .line 1128
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    .line 1129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    .line 1130
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    .line 1131
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    .line 1132
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1131
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 1133
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    .line 1134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    .line 1135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1136
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    .line 1137
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 1138
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mVideoState:I

    .line 1139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mVideoState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    .line 1140
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    .line 1141
    invoke-static {v2, v3}, Landroid/telecom/Call;->-$$Nest$smareBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    .line 1142
    invoke-static {v2, v3}, Landroid/telecom/Call;->-$$Nest$smareBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/telecom/Call$Details;->mCreationTimeMillis:J

    .line 1143
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, Landroid/telecom/Call$Details;->mCreationTimeMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telecom/Call$Details;->mContactDisplayName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mContactDisplayName:Ljava/lang/String;

    .line 1144
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mCallDirection:I

    .line 1145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mCallDirection:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/telecom/Call$Details;->mCallerNumberVerificationStatus:I

    .line 1146
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mCallerNumberVerificationStatus:I

    .line 1147
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1146
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 1126
    :goto_0
    return v1

    .line 1149
    .end local v0    # "d":Landroid/telecom/Call$Details;
    :cond_1
    return v1
.end method

.method public whitelist getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 972
    iget-object v0, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public whitelist getCallCapabilities()I
    .locals 1

    .line 980
    iget v0, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    return v0
.end method

.method public whitelist getCallDirection()I
    .locals 1

    .line 1084
    iget v0, p0, Landroid/telecom/Call$Details;->mCallDirection:I

    return v0
.end method

.method public whitelist getCallProperties()I
    .locals 1

    .line 988
    iget v0, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    return v0
.end method

.method public whitelist getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .line 956
    iget-object v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCallerDisplayNamePresentation()I
    .locals 1

    .line 964
    iget v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public whitelist getCallerNumberVerificationStatus()I
    .locals 1

    .line 1119
    iget v0, p0, Landroid/telecom/Call$Details;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public final whitelist getConnectTimeMillis()J
    .locals 2

    .line 1017
    iget-wide v0, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public whitelist getContactDisplayName()Ljava/lang/String;
    .locals 1

    .line 1076
    iget-object v0, p0, Landroid/telecom/Call$Details;->mContactDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCreationTimeMillis()J
    .locals 2

    .line 1065
    iget-wide v0, p0, Landroid/telecom/Call$Details;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public whitelist getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .line 1005
    iget-object v0, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1046
    iget-object v0, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    .line 1024
    iget-object v0, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public whitelist getHandle()Landroid/net/Uri;
    .locals 1

    .line 937
    iget-object v0, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getHandlePresentation()I
    .locals 1

    .line 945
    iget v0, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    return v0
.end method

.method public whitelist getIntentExtras()Landroid/os/Bundle;
    .locals 1

    .line 1053
    iget-object v0, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final whitelist getState()I
    .locals 1

    .line 923
    iget v0, p0, Landroid/telecom/Call$Details;->mState:I

    return v0
.end method

.method public whitelist getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .line 1039
    iget-object v0, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public greylist-max-o getSupportedAudioRoutes()I
    .locals 1

    .line 997
    const/16 v0, 0xf

    return v0
.end method

.method public greylist-max-o getTelecomCallId()Ljava/lang/String;
    .locals 1

    .line 929
    iget-object v0, p0, Landroid/telecom/Call$Details;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getVideoState()I
    .locals 1

    .line 1031
    iget v0, p0, Landroid/telecom/Call$Details;->mVideoState:I

    return v0
.end method

.method public whitelist hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .line 864
    iget v0, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v0, p1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 1154
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telecom/Call$Details;->mState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    .line 1156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    .line 1158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    .line 1160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    .line 1161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    .line 1163
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/Call$Details;->mVideoState:I

    .line 1165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telecom/Call$Details;->mCreationTimeMillis:J

    .line 1169
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/Call$Details;->mContactDisplayName:Ljava/lang/String;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/Call$Details;->mCallDirection:I

    .line 1171
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telecom/Call$Details;->mCallerNumberVerificationStatus:I

    .line 1172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 1154
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 1246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1247
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    iget-object v1, p0, Landroid/telecom/Call$Details;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    iget v1, p0, Landroid/telecom/Call$Details;->mState:I

    invoke-static {v1}, Landroid/telecom/Call;->-$$Nest$smstateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    const-string v1, ", pa: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    iget-object v1, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1253
    const-string v1, ", hdl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1254
    iget-object v1, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    invoke-static {v1}, Landroid/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    const-string v1, ", hdlPres: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    iget v1, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1257
    const-string v1, ", videoState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    iget v1, p0, Landroid/telecom/Call$Details;->mVideoState:I

    invoke-static {v1}, Landroid/telecom/VideoProfile;->videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    const-string v1, ", caps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    iget v1, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v1}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    const-string v1, ", props: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    iget v1, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v1}, Landroid/telecom/Call$Details;->propertiesToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
