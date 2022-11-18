.class public final Landroid/telecom/ParcelableCall;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    }
.end annotation


# static fields
.field public static final greylist-max-p CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final blacklist mActiveChildCallId:Ljava/lang/String;

.field private final blacklist mCallDirection:I

.field private final greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private final greylist-max-o mCallerDisplayNamePresentation:I

.field private final blacklist mCallerNumberVerificationStatus:I

.field private final greylist-max-o mCannedSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCapabilities:I

.field private final greylist-max-o mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceableCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConnectTimeMillis:J

.field private final blacklist mContactDisplayName:Ljava/lang/String;

.field private final greylist-max-o mCreationTimeMillis:J

.field private final greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final greylist-max-o mHandle:Landroid/net/Uri;

.field private final greylist-max-o mHandlePresentation:I

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mIntentExtras:Landroid/os/Bundle;

.field private final greylist-max-o mIsRttCallChanged:Z

.field private final greylist-max-o mIsVideoCallProviderChanged:Z

.field private final greylist-max-o mParentCallId:Ljava/lang/String;

.field private final greylist-max-o mProperties:I

.field private final greylist-max-o mRttCall:Landroid/telecom/ParcelableRttCall;

.field private final greylist-max-o mState:I

.field private final greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private final greylist-max-o mSupportedAudioRoutes:I

.field private greylist-max-o mVideoCall:Landroid/telecom/VideoCallImpl;

.field private final greylist-max-o mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final greylist-max-o mVideoState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccountHandle(Landroid/telecom/ParcelableCall;)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActiveChildCallId(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mActiveChildCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallDirection(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCallDirection:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerDisplayName(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerDisplayNamePresentation(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerNumberVerificationStatus(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCallerNumberVerificationStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCannedSmsResponses(Landroid/telecom/ParcelableCall;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCapabilities(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChildCallIds(Landroid/telecom/ParcelableCall;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConferenceableCallIds(Landroid/telecom/ParcelableCall;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectTimeMillis(Landroid/telecom/ParcelableCall;)J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContactDisplayName(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mContactDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCreationTimeMillis(Landroid/telecom/ParcelableCall;)J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectCause(Landroid/telecom/ParcelableCall;)Landroid/telecom/DisconnectCause;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/telecom/ParcelableCall;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGatewayInfo(Landroid/telecom/ParcelableCall;)Landroid/telecom/GatewayInfo;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandle(Landroid/telecom/ParcelableCall;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandlePresentation(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntentExtras(Landroid/telecom/ParcelableCall;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRttCallChanged(Landroid/telecom/ParcelableCall;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVideoCallProviderChanged(Landroid/telecom/ParcelableCall;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentCallId(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProperties(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRttCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/ParcelableRttCall;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusHints(Landroid/telecom/ParcelableCall;)Landroid/telecom/StatusHints;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedAudioRoutes(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoCallProvider(Landroid/telecom/ParcelableCall;)Lcom/android/internal/telecom/IVideoProvider;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoState(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 619
    new-instance v0, Landroid/telecom/ParcelableCall$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCall$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;ZLcom/android/internal/telecom/IVideoProvider;ZLandroid/telecom/ParcelableRttCall;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;JIILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p5, "capabilities"    # I
    .param p6, "properties"    # I
    .param p7, "supportedAudioRoutes"    # I
    .param p8, "connectTimeMillis"    # J
    .param p10, "handle"    # Landroid/net/Uri;
    .param p11, "handlePresentation"    # I
    .param p12, "callerDisplayName"    # Ljava/lang/String;
    .param p13, "callerDisplayNamePresentation"    # I
    .param p14, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p15, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p16, "isVideoCallProviderChanged"    # Z
    .param p17, "videoCallProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p18, "isRttCallChanged"    # Z
    .param p19, "rttCall"    # Landroid/telecom/ParcelableRttCall;
    .param p20, "parentCallId"    # Ljava/lang/String;
    .param p22, "statusHints"    # Landroid/telecom/StatusHints;
    .param p23, "videoState"    # I
    .param p25, "intentExtras"    # Landroid/os/Bundle;
    .param p26, "extras"    # Landroid/os/Bundle;
    .param p27, "creationTimeMillis"    # J
    .param p29, "callDirection"    # I
    .param p30, "callerNumberVerificationStatus"    # I
    .param p31, "contactDisplayName"    # Ljava/lang/String;
    .param p32, "activeChildCallId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIJ",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/GatewayInfo;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Z",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "Z",
            "Landroid/telecom/ParcelableRttCall;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/StatusHints;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 362
    .local p4, "cannedSmsResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p21, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p24, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 363
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    .line 364
    move/from16 v2, p2

    iput v2, v0, Landroid/telecom/ParcelableCall;->mState:I

    .line 365
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 366
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    .line 367
    move/from16 v5, p5

    iput v5, v0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    .line 368
    move/from16 v6, p6

    iput v6, v0, Landroid/telecom/ParcelableCall;->mProperties:I

    .line 369
    move/from16 v7, p7

    iput v7, v0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    .line 370
    move-wide/from16 v8, p8

    iput-wide v8, v0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    .line 371
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    .line 372
    move/from16 v11, p11

    iput v11, v0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    .line 373
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    .line 374
    move/from16 v13, p13

    iput v13, v0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    .line 375
    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 376
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 377
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    .line 378
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 379
    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    .line 380
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    .line 381
    move-object/from16 v1, p20

    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    .line 382
    move-object/from16 v1, p21

    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    .line 383
    move-object/from16 v1, p22

    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    .line 384
    move/from16 v1, p23

    iput v1, v0, Landroid/telecom/ParcelableCall;->mVideoState:I

    .line 385
    invoke-static/range {p24 .. p24}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    .line 386
    move-object/from16 v1, p25

    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    .line 387
    move-object/from16 v1, p26

    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    .line 388
    move-wide/from16 v1, p27

    iput-wide v1, v0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    .line 389
    move/from16 v1, p29

    iput v1, v0, Landroid/telecom/ParcelableCall;->mCallDirection:I

    .line 390
    move/from16 v2, p30

    iput v2, v0, Landroid/telecom/ParcelableCall;->mCallerNumberVerificationStatus:I

    .line 391
    move-object/from16 v1, p31

    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mContactDisplayName:Ljava/lang/String;

    .line 392
    move-object/from16 v1, p32

    iput-object v1, v0, Landroid/telecom/ParcelableCall;->mActiveChildCallId:Ljava/lang/String;

    .line 393
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 701
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .line 474
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public blacklist getActiveChildCallId()Ljava/lang/String;
    .locals 1

    .line 614
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mActiveChildCallId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCallDirection()I
    .locals 1

    .line 590
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallDirection:I

    return v0
.end method

.method public greylist-max-o getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getCallerDisplayNamePresentation()I
    .locals 1

    .line 464
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public blacklist getCallerNumberVerificationStatus()I
    .locals 1

    .line 599
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerNumberVerificationStatus:I

    return v0
.end method

.method public greylist-max-o getCannedSmsResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getCapabilities()I
    .locals 1

    .line 424
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    return v0
.end method

.method public greylist-max-o getChildCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 525
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getConferenceableCallIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 529
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-p getConnectTimeMillis()J
    .locals 2

    .line 438
    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public blacklist getContactDisplayName()Ljava/lang/String;
    .locals 1

    .line 606
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mContactDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getCreationTimeMillis()J
    .locals 2

    .line 583
    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-p getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .line 412
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public greylist-max-o getExtras()Landroid/os/Bundle;
    .locals 1

    .line 555
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    .line 469
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public greylist-max-p getHandle()Landroid/net/Uri;
    .locals 1

    .line 444
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public greylist-max-o getHandlePresentation()I
    .locals 1

    .line 451
    iget v0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    return v0
.end method

.method public greylist-max-p getId()Ljava/lang/String;
    .locals 1

    .line 398
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getIntentExtras()Landroid/os/Bundle;
    .locals 1

    .line 564
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getIsRttCallChanged()Z
    .locals 1

    .line 502
    iget-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    return v0
.end method

.method public greylist-max-o getParcelableRttCall()Landroid/telecom/ParcelableRttCall;
    .locals 1

    .line 510
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    return-object v0
.end method

.method public greylist-max-o getParentCallId()Ljava/lang/String;
    .locals 1

    .line 517
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getProperties()I
    .locals 1

    .line 428
    iget v0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    return v0
.end method

.method public greylist-max-o getState()I
    .locals 1

    .line 403
    iget v0, p0, Landroid/telecom/ParcelableCall;->mState:I

    return v0
.end method

.method public greylist-max-o getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .line 538
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public greylist-max-o getSupportedAudioRoutes()I
    .locals 1

    .line 432
    iget v0, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    return v0
.end method

.method public greylist-max-o getVideoCallImpl(Ljava/lang/String;I)Landroid/telecom/VideoCallImpl;
    .locals 2
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "targetSdkVersion"    # I

    .line 485
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_0

    .line 487
    :try_start_0
    new-instance v1, Landroid/telecom/VideoCallImpl;

    invoke-direct {v1, v0, p1, p2}, Landroid/telecom/VideoCallImpl;-><init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V

    iput-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    goto :goto_0

    .line 489
    :catch_0
    move-exception v0

    .line 494
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;

    return-object v0
.end method

.method public blacklist getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 1

    .line 498
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method public greylist-max-o getVideoState()I
    .locals 1

    .line 546
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    return v0
.end method

.method public greylist-max-o isVideoCallProviderChanged()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 742
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "[%s, parent:%s, children:%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "destination"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 707
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 708
    iget v0, p0, Landroid/telecom/ParcelableCall;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 710
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 711
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 712
    iget v0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 713
    iget-wide v2, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 714
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 715
    iget v0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 717
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 718
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 719
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 720
    iget-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 721
    nop

    .line 722
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 721
    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 723
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 725
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 726
    iget v0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 728
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 729
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 730
    iget v0, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 731
    iget-boolean v0, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 732
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 733
    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 734
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget v0, p0, Landroid/telecom/ParcelableCall;->mCallerNumberVerificationStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mContactDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mActiveChildCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 738
    return-void
.end method
