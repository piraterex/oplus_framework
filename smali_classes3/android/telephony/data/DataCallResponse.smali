.class public final Landroid/telephony/data/DataCallResponse;
.super Ljava/lang/Object;
.source "DataCallResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/data/DataCallResponse$Builder;,
        Landroid/telephony/data/DataCallResponse$HandoverFailureMode;,
        Landroid/telephony/data/DataCallResponse$LinkStatus;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/data/DataCallResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist HANDOVER_FAILURE_MODE_DO_FALLBACK:I = 0x1

.field public static final whitelist HANDOVER_FAILURE_MODE_LEGACY:I = 0x0

.field public static final whitelist HANDOVER_FAILURE_MODE_NO_FALLBACK_RETRY_HANDOVER:I = 0x2

.field public static final whitelist HANDOVER_FAILURE_MODE_NO_FALLBACK_RETRY_SETUP_NORMAL:I = 0x3

.field public static final whitelist HANDOVER_FAILURE_MODE_UNKNOWN:I = -0x1

.field public static final whitelist LINK_STATUS_ACTIVE:I = 0x2

.field public static final whitelist LINK_STATUS_DORMANT:I = 0x1

.field public static final whitelist LINK_STATUS_INACTIVE:I = 0x0

.field public static final whitelist LINK_STATUS_UNKNOWN:I = -0x1

.field public static final whitelist PDU_SESSION_ID_NOT_SET:I = 0x0

.field public static final whitelist RETRY_DURATION_UNDEFINED:I = -0x1


# instance fields
.field private final greylist-max-o mAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCause:I

.field private final blacklist mDefaultQos:Landroid/telephony/data/Qos;

.field private final blacklist mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGatewayAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandoverFailureMode:I

.field private final blacklist mId:I

.field private final blacklist mInterfaceName:Ljava/lang/String;

.field private final blacklist mLinkStatus:I

.field private final greylist-max-o mMtu:I

.field private final blacklist mMtuV4:I

.field private final blacklist mMtuV6:I

.field private final blacklist mPcscfAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPduSessionId:I

.field private final blacklist mProtocolType:I

.field private final blacklist mQosBearerSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

.field private final blacklist mSuggestedRetryTime:J

.field private final blacklist mTrafficDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 549
    new-instance v0, Landroid/telephony/data/DataCallResponse$1;

    invoke-direct {v0}, Landroid/telephony/data/DataCallResponse$1;-><init>()V

    sput-object v0, Landroid/telephony/data/DataCallResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(IIIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 2
    .param p1, "cause"    # I
    .param p2, "suggestedRetryTime"    # I
    .param p3, "id"    # I
    .param p4, "linkStatus"    # I
    .param p5, "protocolType"    # I
    .param p6, "interfaceName"    # Ljava/lang/String;
    .param p11, "mtu"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;I)V"
        }
    .end annotation

    .line 174
    .local p7, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .local p8, "dnsAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p9, "gatewayAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p10, "pcscfAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput p1, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    .line 176
    int-to-long v0, p2

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    .line 177
    iput p3, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    .line 178
    iput p4, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    .line 179
    iput p5, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    .line 180
    if-nez p6, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p6

    :goto_0
    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    .line 181
    if-nez p7, :cond_1

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 183
    if-nez p8, :cond_2

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 185
    if-nez p9, :cond_3

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 187
    if-nez p10, :cond_4

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_4
    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 189
    iput p11, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    iput p11, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    iput p11, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    .line 191
    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    .line 194
    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 196
    return-void
.end method

.method private constructor blacklist <init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;)V
    .locals 17
    .param p1, "cause"    # I
    .param p2, "suggestedRetryTime"    # J
    .param p4, "id"    # I
    .param p5, "linkStatus"    # I
    .param p6, "protocolType"    # I
    .param p7, "interfaceName"    # Ljava/lang/String;
    .param p12, "mtu"    # I
    .param p13, "mtuV4"    # I
    .param p14, "mtuV6"    # I
    .param p15, "handoverFailureMode"    # I
    .param p16, "pduSessionId"    # I
    .param p17, "defaultQos"    # Landroid/telephony/data/Qos;
    .param p19, "sliceInfo"    # Landroid/telephony/data/NetworkSliceInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;IIIII",
            "Landroid/telephony/data/Qos;",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;",
            "Landroid/telephony/data/NetworkSliceInfo;",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p8, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .local p9, "dnsAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p10, "gatewayAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p11, "pcscfAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .local p18, "qosBearerSessions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/QosBearerSession;>;"
    .local p20, "trafficDescriptors":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/TrafficDescriptor;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    move-object/from16 v3, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p18

    move-object/from16 v6, p20

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 207
    move/from16 v7, p1

    iput v7, v0, Landroid/telephony/data/DataCallResponse;->mCause:I

    .line 208
    move-wide/from16 v8, p2

    iput-wide v8, v0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    .line 209
    move/from16 v10, p4

    iput v10, v0, Landroid/telephony/data/DataCallResponse;->mId:I

    .line 210
    move/from16 v11, p5

    iput v11, v0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    .line 211
    move/from16 v12, p6

    iput v12, v0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    .line 212
    if-nez p7, :cond_0

    const-string v13, ""

    goto :goto_0

    :cond_0
    move-object/from16 v13, p7

    :goto_0
    iput-object v13, v0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    .line 213
    if-nez v1, :cond_1

    .line 214
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_1
    iput-object v13, v0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 215
    if-nez v2, :cond_2

    .line 216
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_2
    iput-object v13, v0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 217
    if-nez v3, :cond_3

    .line 218
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_3
    iput-object v13, v0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 219
    if-nez v4, :cond_4

    .line 220
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_4
    iput-object v13, v0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 221
    move/from16 v13, p12

    iput v13, v0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    .line 222
    move/from16 v14, p13

    iput v14, v0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    .line 223
    move/from16 v15, p14

    iput v15, v0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    .line 224
    move/from16 v1, p15

    iput v1, v0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    .line 225
    move/from16 v1, p16

    iput v1, v0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    .line 226
    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 227
    if-nez v5, :cond_5

    .line 228
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, v16

    goto :goto_5

    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_5
    iput-object v1, v0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    .line 229
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 230
    if-nez v6, :cond_6

    .line 231
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, v16

    goto :goto_6

    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_6
    iput-object v1, v0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 232
    return-void
.end method

.method synthetic constructor blacklist <init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;Landroid/telephony/data/DataCallResponse-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p20}, Landroid/telephony/data/DataCallResponse;-><init>(IJIIILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIIIILandroid/telephony/data/Qos;Ljava/util/List;Landroid/telephony/data/NetworkSliceInfo;Ljava/util/List;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 244
    const-class v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/LinkAddress;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 246
    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 248
    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 250
    const-class v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Ljava/net/InetAddress;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    .line 256
    const-class v0, Landroid/telephony/data/Qos;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/Qos;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/Qos;

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    .line 258
    const-class v1, Landroid/telephony/data/QosBearerSession;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/data/QosBearerSession;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 259
    const-class v0, Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/NetworkSliceInfo;

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 261
    const-class v1, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/telephony/data/TrafficDescriptor;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    .line 262
    return-void
.end method

.method public static blacklist failureModeToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "handoverFailureMode"    # I

    .line 571
    packed-switch p0, :pswitch_data_0

    .line 577
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 576
    :pswitch_0
    const-string/jumbo v0, "retry setup new one"

    return-object v0

    .line 575
    :pswitch_1
    const-string/jumbo v0, "retry handover"

    return-object v0

    .line 574
    :pswitch_2
    const-string v0, "fallback"

    return-object v0

    .line 573
    :pswitch_3
    const-string/jumbo v0, "legacy"

    return-object v0

    .line 572
    :pswitch_4
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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

    .line 515
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 456
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 458
    :cond_0
    instance-of v1, p1, Landroid/telephony/data/DataCallResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 459
    return v2

    .line 462
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/data/DataCallResponse;

    .line 464
    .local v1, "other":Landroid/telephony/data/DataCallResponse;
    iget-object v3, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    if-eqz v3, :cond_3

    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    if-nez v4, :cond_2

    goto :goto_0

    .line 466
    :cond_2
    invoke-virtual {v3, v4}, Landroid/telephony/data/Qos;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    .line 465
    :cond_3
    :goto_0
    iget-object v4, v1, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    if-ne v3, v4, :cond_4

    move v3, v0

    goto :goto_1

    :cond_4
    move v3, v2

    .line 466
    :goto_1
    nop

    .line 469
    .local v3, "isQosSame":Z
    iget-object v4, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    if-eqz v4, :cond_7

    iget-object v5, v1, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    if-nez v5, :cond_5

    goto :goto_2

    .line 472
    :cond_5
    nop

    .line 471
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, v1, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    iget-object v5, v1, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    .line 472
    invoke-interface {v4, v5}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v0

    goto :goto_3

    :cond_6
    move v4, v2

    goto :goto_3

    .line 470
    :cond_7
    :goto_2
    iget-object v5, v1, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    if-ne v4, v5, :cond_8

    move v4, v0

    goto :goto_3

    :cond_8
    move v4, v2

    .line 472
    :goto_3
    nop

    .line 475
    .local v4, "isQosBearerSessionsSame":Z
    iget-object v5, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    if-eqz v5, :cond_b

    iget-object v6, v1, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    if-nez v6, :cond_9

    goto :goto_4

    .line 478
    :cond_9
    nop

    .line 477
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, v1, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_a

    iget-object v5, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    iget-object v6, v1, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    .line 478
    invoke-interface {v5, v6}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v0

    goto :goto_5

    :cond_a
    move v5, v2

    goto :goto_5

    .line 476
    :cond_b
    :goto_4
    iget-object v6, v1, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    if-ne v5, v6, :cond_c

    move v5, v0

    goto :goto_5

    :cond_c
    move v5, v2

    .line 478
    :goto_5
    nop

    .line 480
    .local v5, "isTrafficDescriptorsSame":Z
    iget v6, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    iget v7, v1, Landroid/telephony/data/DataCallResponse;->mCause:I

    if-ne v6, v7, :cond_d

    iget-wide v6, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    iget-wide v8, v1, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_d

    iget v6, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    iget v7, v1, Landroid/telephony/data/DataCallResponse;->mId:I

    if-ne v6, v7, :cond_d

    iget v6, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    iget v7, v1, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    if-ne v6, v7, :cond_d

    iget v6, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    iget v7, v1, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    if-ne v6, v7, :cond_d

    iget-object v6, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    iget-object v7, v1, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    .line 485
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 486
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v1, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_d

    iget-object v6, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    iget-object v7, v1, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    .line 487
    invoke-interface {v6, v7}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 488
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v1, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_d

    iget-object v6, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    iget-object v7, v1, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    .line 489
    invoke-interface {v6, v7}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 490
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v1, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_d

    iget-object v6, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    iget-object v7, v1, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    .line 491
    invoke-interface {v6, v7}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 492
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v1, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ne v6, v7, :cond_d

    iget-object v6, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    iget-object v7, v1, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    .line 493
    invoke-interface {v6, v7}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget v6, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    iget v7, v1, Landroid/telephony/data/DataCallResponse;->mMtu:I

    if-ne v6, v7, :cond_d

    iget v6, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    iget v7, v1, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    if-ne v6, v7, :cond_d

    iget v6, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    iget v7, v1, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    if-ne v6, v7, :cond_d

    iget v6, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    iget v7, v1, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    if-ne v6, v7, :cond_d

    iget v6, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    iget v7, v1, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    if-ne v6, v7, :cond_d

    if-eqz v3, :cond_d

    if-eqz v4, :cond_d

    iget-object v6, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    iget-object v7, v1, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    .line 501
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    goto :goto_6

    :cond_d
    move v0, v2

    .line 480
    :goto_6
    return v0
.end method

.method public whitelist getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getCause()I
    .locals 1

    .line 268
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    return v0
.end method

.method public blacklist getDefaultQos()Landroid/telephony/data/Qos;
    .locals 1

    .line 396
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    return-object v0
.end method

.method public whitelist getDnsAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 332
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getGatewayAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getHandoverFailureMode()I
    .locals 1

    .line 379
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    return v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 302
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    return v0
.end method

.method public whitelist getInterfaceName()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLinkStatus()I
    .locals 1

    .line 307
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    return v0
.end method

.method public whitelist getMtu()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    return v0
.end method

.method public whitelist getMtuV4()I
    .locals 1

    .line 364
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    return v0
.end method

.method public whitelist getMtuV6()I
    .locals 1

    .line 372
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    return v0
.end method

.method public whitelist getPcscfAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getPduSessionId()I
    .locals 1

    .line 386
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    return v0
.end method

.method public whitelist getProtocolType()I
    .locals 1

    .line 313
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    return v0
.end method

.method public blacklist getQosBearerSessions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/QosBearerSession;",
            ">;"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getRetryDurationMillis()J
    .locals 2

    .line 296
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    return-wide v0
.end method

.method public whitelist getSliceInfo()Landroid/telephony/data/NetworkSliceInfo;
    .locals 1

    .line 415
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    return-object v0
.end method

.method public whitelist getSuggestedRetryTime()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 281
    const/4 v0, 0x0

    return v0

    .line 282
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 283
    const v0, 0x7fffffff

    return v0

    .line 285
    :cond_1
    long-to-int v0, v0

    return v0
.end method

.method public whitelist getTrafficDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/data/TrafficDescriptor;",
            ">;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 507
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    .line 509
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 507
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 429
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 430
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "DataCallResponse: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 431
    const-string v2, " cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-static {v2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 432
    const-string v2, " retry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 433
    const-string v2, " cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 434
    const-string v2, " linkStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 435
    const-string v2, " protocolType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 436
    const-string v2, " ifname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 437
    const-string v2, " addresses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 438
    const-string v2, " dnses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 439
    const-string v2, " gateways="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 440
    const-string v2, " pcscf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 441
    const-string v2, " mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getMtu()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 442
    const-string v2, " mtuV4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getMtuV4()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 443
    const-string v2, " mtuV6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getMtuV6()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 444
    const-string v2, " handoverFailureMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    invoke-static {v2}, Landroid/telephony/data/DataCallResponse;->failureModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 445
    const-string v2, " pduSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/data/DataCallResponse;->getPduSessionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 446
    const-string v2, " defaultQos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 447
    const-string v2, " qosBearerSessions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 448
    const-string v2, " sliceInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 449
    const-string v2, " trafficDescriptors="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 450
    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 520
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mCause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget-wide v0, p0, Landroid/telephony/data/DataCallResponse;->mSuggestedRetryTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 522
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mLinkStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mProtocolType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 527
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDnsAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 528
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mGatewayAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 529
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mPcscfAddresses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 530
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mMtuV6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mHandoverFailureMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    iget v0, p0, Landroid/telephony/data/DataCallResponse;->mPduSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    if-eqz v0, :cond_1

    .line 536
    invoke-virtual {v0}, Landroid/telephony/data/Qos;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    check-cast v0, Landroid/telephony/data/EpsQos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mDefaultQos:Landroid/telephony/data/Qos;

    check-cast v0, Landroid/telephony/data/NrQos;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 542
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 544
    :goto_0
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mQosBearerSessions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 545
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mSliceInfo:Landroid/telephony/data/NetworkSliceInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 546
    iget-object v0, p0, Landroid/telephony/data/DataCallResponse;->mTrafficDescriptors:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 547
    return-void
.end method
