.class public final Landroid/telephony/NetworkRegistrationInfo;
.super Ljava/lang/Object;
.source "NetworkRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkRegistrationInfo$Builder;,
        Landroid/telephony/NetworkRegistrationInfo$ServiceType;,
        Landroid/telephony/NetworkRegistrationInfo$NRState;,
        Landroid/telephony/NetworkRegistrationInfo$RegistrationState;,
        Landroid/telephony/NetworkRegistrationInfo$Domain;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/NetworkRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DOMAIN_CS:I = 0x1

.field public static final whitelist DOMAIN_CS_PS:I = 0x3

.field public static final whitelist DOMAIN_PS:I = 0x2

.field public static final whitelist DOMAIN_UNKNOWN:I = 0x0

.field public static final whitelist NR_STATE_CONNECTED:I = 0x3

.field public static final whitelist NR_STATE_NONE:I = 0x0

.field public static final whitelist NR_STATE_NOT_RESTRICTED:I = 0x2

.field public static final whitelist NR_STATE_RESTRICTED:I = 0x1

.field public static final whitelist REGISTRATION_STATE_DENIED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTRATION_STATE_HOME:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTRATION_STATE_NOT_REGISTERED_OR_SEARCHING:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTRATION_STATE_NOT_REGISTERED_SEARCHING:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTRATION_STATE_ROAMING:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist REGISTRATION_STATE_UNKNOWN:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SERVICE_TYPE_DATA:I = 0x2

.field public static final whitelist SERVICE_TYPE_EMERGENCY:I = 0x5

.field public static final whitelist SERVICE_TYPE_SMS:I = 0x3

.field public static final whitelist SERVICE_TYPE_UNKNOWN:I = 0x0

.field public static final whitelist SERVICE_TYPE_VIDEO:I = 0x4

.field public static final whitelist SERVICE_TYPE_VOICE:I = 0x1


# instance fields
.field private blacklist mAccessNetworkTechnology:I

.field private final blacklist mAvailableServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCellIdentity:Landroid/telephony/CellIdentity;

.field private blacklist mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

.field private final blacklist mDomain:I

.field private final blacklist mEmergencyOnly:Z

.field private blacklist mIsUsingCarrierAggregation:Z

.field private blacklist mNrState:I

.field private final blacklist mRegistrationState:I

.field private final blacklist mRejectCause:I

.field private blacklist mRoamingType:I

.field private blacklist mRplmn:Ljava/lang/String;

.field private final blacklist mTransportType:I

.field private blacklist mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 738
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$1;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/NetworkRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V
    .locals 12
    .param p1, "domain"    # I
    .param p2, "transportType"    # I
    .param p3, "registrationState"    # I
    .param p4, "accessNetworkTechnology"    # I
    .param p5, "rejectCause"    # I
    .param p6, "emergencyOnly"    # Z
    .param p8, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p9, "rplmn"    # Ljava/lang/String;
    .param p10, "maxDataCalls"    # I
    .param p11, "isDcNrRestricted"    # Z
    .param p12, "isNrAvailable"    # Z
    .param p13, "isEndcAvailable"    # Z
    .param p14, "vopsSupportInfo"    # Landroid/telephony/VopsSupportInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/CellIdentity;",
            "Ljava/lang/String;",
            "IZZZ",
            "Landroid/telephony/VopsSupportInfo;",
            ")V"
        }
    .end annotation

    .line 303
    .local p7, "availableServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v11, Landroid/telephony/DataSpecificRegistrationInfo;

    move-object v0, v11

    move/from16 v1, p10

    move/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, p13

    move-object/from16 v5, p14

    invoke-direct/range {v0 .. v5}, Landroid/telephony/DataSpecificRegistrationInfo;-><init>(IZZZLandroid/telephony/VopsSupportInfo;)V

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;)V

    .line 307
    return-void
.end method

.method private constructor blacklist <init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;)V
    .locals 2
    .param p1, "domain"    # I
    .param p2, "transportType"    # I
    .param p3, "registrationState"    # I
    .param p4, "accessNetworkTechnology"    # I
    .param p5, "rejectCause"    # I
    .param p6, "emergencyOnly"    # Z
    .param p8, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p9, "rplmn"    # Ljava/lang/String;
    .param p10, "voiceSpecificInfo"    # Landroid/telephony/VoiceSpecificRegistrationInfo;
    .param p11, "dataSpecificInfo"    # Landroid/telephony/DataSpecificRegistrationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/CellIdentity;",
            "Ljava/lang/String;",
            "Landroid/telephony/VoiceSpecificRegistrationInfo;",
            "Landroid/telephony/DataSpecificRegistrationInfo;",
            ")V"
        }
    .end annotation

    .line 254
    .local p7, "availableServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    .line 256
    iput p2, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    .line 257
    iput p3, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    .line 258
    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p3, v1, :cond_0

    .line 259
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    .line 260
    invoke-virtual {p0, p4}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 261
    iput p5, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    .line 262
    if-eqz p7, :cond_1

    .line 263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iput-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    .line 264
    iput-object p8, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 265
    iput-boolean p6, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    .line 266
    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 267
    iput-object p9, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    .line 268
    iput-object p10, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 269
    iput-object p11, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    .line 271
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->updateNrState()V

    .line 272
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;Landroid/telephony/NetworkRegistrationInfo-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;)V

    return-void
.end method

.method public constructor blacklist <init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V
    .locals 16
    .param p1, "domain"    # I
    .param p2, "transportType"    # I
    .param p3, "registrationState"    # I
    .param p4, "accessNetworkTechnology"    # I
    .param p5, "rejectCause"    # I
    .param p6, "emergencyOnly"    # Z
    .param p8, "cellIdentity"    # Landroid/telephony/CellIdentity;
    .param p9, "rplmn"    # Ljava/lang/String;
    .param p10, "cssSupported"    # Z
    .param p11, "roamingIndicator"    # I
    .param p12, "systemIsInPrl"    # I
    .param p13, "defaultRoamingIndicator"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZ",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/CellIdentity;",
            "Ljava/lang/String;",
            "ZIII)V"
        }
    .end annotation

    .line 285
    .local p7, "availableServices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v10, Landroid/telephony/VoiceSpecificRegistrationInfo;

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    invoke-direct {v10, v12, v13, v14, v15}, Landroid/telephony/VoiceSpecificRegistrationInfo;-><init>(ZIII)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;Landroid/telephony/VoiceSpecificRegistrationInfo;Landroid/telephony/DataSpecificRegistrationInfo;)V

    .line 289
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    .line 318
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 319
    const-class v0, Landroid/telephony/CellIdentity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CellIdentity;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellIdentity;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 320
    const-class v0, Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 321
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 320
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/VoiceSpecificRegistrationInfo;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 322
    const-class v0, Landroid/telephony/DataSpecificRegistrationInfo;

    .line 323
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/DataSpecificRegistrationInfo;

    .line 322
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/DataSpecificRegistrationInfo;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    .line 327
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/NetworkRegistrationInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/NetworkRegistrationInfo;)V
    .locals 3
    .param p1, "nri"    # Landroid/telephony/NetworkRegistrationInfo;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    .line 337
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    .line 338
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    .line 339
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    .line 340
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    .line 341
    iget-boolean v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    .line 342
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    .line 343
    iget-boolean v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    .line 345
    iget-object v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-eqz v0, :cond_0

    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 347
    .local v0, "p":Landroid/os/Parcel;
    iget-object v1, p1, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 348
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 351
    sget-object v1, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellIdentity;

    iput-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 355
    .end local v0    # "p":Landroid/os/Parcel;
    :cond_0
    iget-object v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    if-eqz v0, :cond_1

    .line 356
    new-instance v0, Landroid/telephony/VoiceSpecificRegistrationInfo;

    iget-object v1, p1, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    invoke-direct {v0, v1}, Landroid/telephony/VoiceSpecificRegistrationInfo;-><init>(Landroid/telephony/VoiceSpecificRegistrationInfo;)V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 358
    :cond_1
    iget-object v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    if-eqz v0, :cond_2

    .line 359
    new-instance v0, Landroid/telephony/DataSpecificRegistrationInfo;

    iget-object v1, p1, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    invoke-direct {v0, v1}, Landroid/telephony/DataSpecificRegistrationInfo;-><init>(Landroid/telephony/DataSpecificRegistrationInfo;)V

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    .line 361
    :cond_2
    iget v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 362
    iget-object v0, p1, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    .line 363
    return-void
.end method

.method private blacklist copy()Landroid/telephony/NetworkRegistrationInfo;
    .locals 2

    .line 761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 762
    .local v0, "p":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/NetworkRegistrationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 763
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 764
    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    invoke-direct {v1, v0}, Landroid/telephony/NetworkRegistrationInfo;-><init>(Landroid/os/Parcel;)V

    .line 765
    .local v1, "result":Landroid/telephony/NetworkRegistrationInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    return-object v1
.end method

.method static blacklist domainToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "domain"    # I

    .line 621
    packed-switch p0, :pswitch_data_0

    .line 625
    const-string v0, "UNKNOWN"

    return-object v0

    .line 624
    :pswitch_0
    const-string v0, "CS_PS"

    return-object v0

    .line 623
    :pswitch_1
    const-string v0, "PS"

    return-object v0

    .line 622
    :pswitch_2
    const-string v0, "CS"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic blacklist lambda$toString$0(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/Integer;

    .line 643
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/NetworkRegistrationInfo;->serviceTypeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist nrStateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "nrState"    # I

    .line 607
    packed-switch p0, :pswitch_data_0

    .line 615
    const-string v0, "NONE"

    return-object v0

    .line 613
    :pswitch_0
    const-string v0, "CONNECTED"

    return-object v0

    .line 611
    :pswitch_1
    const-string v0, "NOT_RESTRICTED"

    return-object v0

    .line 609
    :pswitch_2
    const-string v0, "RESTRICTED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist registrationStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "registrationState"    # I

    .line 594
    packed-switch p0, :pswitch_data_0

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown reg state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 600
    :pswitch_0
    const-string v0, "ROAMING"

    return-object v0

    .line 599
    :pswitch_1
    const-string v0, "UNKNOWN"

    return-object v0

    .line 598
    :pswitch_2
    const-string v0, "DENIED"

    return-object v0

    .line 597
    :pswitch_3
    const-string v0, "NOT_REG_SEARCHING"

    return-object v0

    .line 596
    :pswitch_4
    const-string v0, "HOME"

    return-object v0

    .line 595
    :pswitch_5
    const-string v0, "NOT_REG_OR_SEARCHING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist serviceTypeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "serviceType"    # I

    .line 575
    packed-switch p0, :pswitch_data_0

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown service type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 580
    :pswitch_0
    const-string v0, "EMERGENCY"

    return-object v0

    .line 579
    :pswitch_1
    const-string v0, "VIDEO"

    return-object v0

    .line 578
    :pswitch_2
    const-string v0, "SMS"

    return-object v0

    .line 577
    :pswitch_3
    const-string v0, "DATA"

    return-object v0

    .line 576
    :pswitch_4
    const-string v0, "VOICE"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 665
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 667
    :cond_0
    instance-of v1, p1, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 668
    return v2

    .line 671
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/NetworkRegistrationInfo;

    .line 672
    .local v1, "other":Landroid/telephony/NetworkRegistrationInfo;
    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    iget-boolean v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    iget-object v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    .line 679
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    iget-boolean v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    iget-object v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 681
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    iget-object v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 682
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    iget-object v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    .line 683
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    .line 684
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    iget v4, v1, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 672
    :goto_0
    return v0
.end method

.method public whitelist getAccessNetworkTechnology()I
    .locals 1

    .line 485
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    return v0
.end method

.method public whitelist getAvailableServices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCellIdentity()Landroid/telephony/CellIdentity;
    .locals 1

    .line 519
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    return-object v0
.end method

.method public whitelist getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 558
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    return-object v0
.end method

.method public whitelist getDomain()I
    .locals 1

    .line 373
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    return v0
.end method

.method public blacklist getNrState()I
    .locals 1

    .line 382
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    return v0
.end method

.method public whitelist getRegisteredPlmn()Ljava/lang/String;
    .locals 1

    .line 428
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRegistrationState()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 397
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    return v0
.end method

.method public whitelist getRejectCause()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 509
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    return v0
.end method

.method public whitelist getRoamingType()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 462
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    return v0
.end method

.method public whitelist getTransportType()I
    .locals 1

    .line 368
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    return v0
.end method

.method public blacklist getVoiceSpecificInfo()Landroid/telephony/VoiceSpecificRegistrationInfo;
    .locals 1

    .line 548
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 657
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    .line 658
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 659
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    .line 660
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 657
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEmergencyEnabled()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 470
    iget-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    return v0
.end method

.method public blacklist isInService()Z
    .locals 3

    .line 443
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public whitelist isRegistered()Z
    .locals 3

    .line 404
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public whitelist isRoaming()Z
    .locals 1

    .line 435
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isSearching()Z
    .locals 2

    .line 412
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isUsingCarrierAggregation()Z
    .locals 1

    .line 540
    iget-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    return v0
.end method

.method public blacklist sanitizeLocationInfo()Landroid/telephony/NetworkRegistrationInfo;
    .locals 2

    .line 755
    invoke-direct {p0}, Landroid/telephony/NetworkRegistrationInfo;->copy()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 756
    .local v0, "result":Landroid/telephony/NetworkRegistrationInfo;
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    .line 757
    return-object v0
.end method

.method public blacklist setAccessNetworkTechnology(I)V
    .locals 1
    .param p1, "tech"    # I

    .line 493
    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    .line 495
    const/16 p1, 0xd

    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    .line 498
    :cond_0
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    .line 499
    return-void
.end method

.method public blacklist setIsUsingCarrierAggregation(Z)V
    .locals 0
    .param p1, "isUsingCarrierAggregation"    # Z

    .line 530
    iput-boolean p1, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    .line 531
    return-void
.end method

.method public blacklist setNrState(I)V
    .locals 0
    .param p1, "nrState"    # I

    .line 387
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 388
    return-void
.end method

.method public blacklist setRoamingType(I)V
    .locals 0
    .param p1, "roamingType"    # I

    .line 453
    iput p1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    .line 454
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkRegistrationInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 633
    const-string v1, " domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->domainToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 634
    const-string v1, " transportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    .line 635
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 636
    const-string v1, " registrationState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 637
    const-string v1, " roamingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    invoke-static {v1}, Landroid/telephony/ServiceState;->roamingTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 638
    const-string v1, " accessNetworkTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    .line 639
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 640
    const-string v1, " rejectCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 641
    const-string v1, " emergencyEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 642
    const-string v1, " availableServices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 644
    nop

    .line 643
    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/telephony/NetworkRegistrationInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/telephony/NetworkRegistrationInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 644
    const-string v3, ","

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 645
    const-string v1, " cellIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 646
    const-string v1, " voiceSpecificInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 647
    const-string v1, " dataSpecificInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 648
    const-string v1, " nrState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    .line 649
    iget v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->nrStateToString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, "****"

    .line 648
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 650
    const-string v1, " rRplmn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 651
    const-string v1, " isUsingCarrierAggregation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 652
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    return-object v0
.end method

.method public blacklist updateNrState()V
    .locals 1

    .line 728
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 729
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    iget-boolean v0, v0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    iget-boolean v0, v0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    if-eqz v0, :cond_0

    .line 731
    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    goto :goto_0

    .line 733
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    .line 736
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 694
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDomain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mTransportType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRegistrationState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 697
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRoamingType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAccessNetworkTechnology:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 699
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRejectCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    iget-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mEmergencyOnly:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 701
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mAvailableServices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 702
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mCellIdentity:Landroid/telephony/CellIdentity;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 703
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mVoiceSpecificInfo:Landroid/telephony/VoiceSpecificRegistrationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 704
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mDataSpecificInfo:Landroid/telephony/DataSpecificRegistrationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 705
    iget v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mNrState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    iget-object v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mRplmn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 707
    iget-boolean v0, p0, Landroid/telephony/NetworkRegistrationInfo;->mIsUsingCarrierAggregation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 708
    return-void
.end method
