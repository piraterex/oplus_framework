.class public final Landroid/net/metrics/ValidationProbeEvent;
.super Ljava/lang/Object;
.source "ValidationProbeEvent.java"

# interfaces
.implements Landroid/net/metrics/IpConnectivityLog$Event;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/ValidationProbeEvent$Decoder;,
        Landroid/net/metrics/ValidationProbeEvent$Builder;,
        Landroid/net/metrics/ValidationProbeEvent$ReturnCode;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/metrics/ValidationProbeEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DNS_FAILURE:I = 0x0

.field public static final whitelist DNS_SUCCESS:I = 0x1

.field private static final greylist-max-o FIRST_VALIDATION:I = 0x100

.field public static final whitelist PROBE_DNS:I = 0x0

.field public static final whitelist PROBE_FALLBACK:I = 0x4

.field public static final whitelist PROBE_HTTP:I = 0x1

.field public static final whitelist PROBE_HTTPS:I = 0x2

.field public static final whitelist PROBE_PAC:I = 0x3

.field public static final whitelist PROBE_PRIVDNS:I = 0x5

.field private static final greylist-max-o REVALIDATION:I = 0x200


# instance fields
.field public final greylist-max-o durationMs:J

.field public final greylist-max-o probeType:I

.field public final greylist-max-o returnCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smmakeProbeType(IZ)I
    .locals 0

    invoke-static {p0, p1}, Landroid/net/metrics/ValidationProbeEvent;->makeProbeType(IZ)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Landroid/net/metrics/ValidationProbeEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/ValidationProbeEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/ValidationProbeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JII)V
    .locals 0
    .param p1, "durationMs"    # J
    .param p3, "probeType"    # I
    .param p4, "returnCode"    # I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p1, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    .line 75
    iput p3, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    .line 76
    iput p4, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    .line 77
    return-void
.end method

.method synthetic constructor blacklist <init>(JIILandroid/net/metrics/ValidationProbeEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/metrics/ValidationProbeEvent;-><init>(JII)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    .line 83
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/metrics/ValidationProbeEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/metrics/ValidationProbeEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist getProbeName(I)Ljava/lang/String;
    .locals 3
    .param p0, "probeType"    # I

    .line 163
    sget-object v0, Landroid/net/metrics/ValidationProbeEvent$Decoder;->constants:Landroid/util/SparseArray;

    and-int/lit16 v1, p0, 0xff

    const-string v2, "PROBE_???"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static greylist-max-o getValidationStage(I)Ljava/lang/String;
    .locals 3
    .param p0, "probeType"    # I

    .line 167
    sget-object v0, Landroid/net/metrics/ValidationProbeEvent$Decoder;->constants:Landroid/util/SparseArray;

    const v1, 0xff00

    and-int/2addr v1, p0

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static greylist-max-o makeProbeType(IZ)I
    .locals 2
    .param p0, "probeType"    # I
    .param p1, "firstValidation"    # Z

    .line 156
    and-int/lit16 v0, p0, 0xff

    if-eqz p1, :cond_0

    const/16 v1, 0x100

    goto :goto_0

    :cond_0
    const/16 v1, 0x200

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 179
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/net/metrics/ValidationProbeEvent;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/net/metrics/ValidationProbeEvent;

    .line 181
    .local v1, "other":Landroid/net/metrics/ValidationProbeEvent;
    iget-wide v2, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    iget-wide v4, v1, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget v2, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    iget v3, v1, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    iget v3, v1, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 179
    .end local v1    # "other":Landroid/net/metrics/ValidationProbeEvent;
    :cond_2
    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 173
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    .line 174
    invoke-static {v1}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    invoke-static {v1}, Landroid/net/metrics/ValidationProbeEvent;->getValidationStage(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 173
    const-string v1, "ValidationProbeEvent(%s:%d %s, %dms)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget-wide v0, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget v0, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v0, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    return-void
.end method
