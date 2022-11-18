.class public abstract Landroid/telephony/CellInfo;
.super Ljava/lang/Object;
.source "CellInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellInfo$CellConnectionStatus;,
        Landroid/telephony/CellInfo$Type;
    }
.end annotation


# static fields
.field public static final whitelist CONNECTION_NONE:I = 0x0

.field public static final whitelist CONNECTION_PRIMARY_SERVING:I = 0x1

.field public static final whitelist CONNECTION_SECONDARY_SERVING:I = 0x2

.field public static final whitelist CONNECTION_UNKNOWN:I = 0x7fffffff

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist TIMESTAMP_TYPE_ANTENNA:I = 0x1

.field public static final greylist TIMESTAMP_TYPE_JAVA_RIL:I = 0x4

.field public static final greylist TIMESTAMP_TYPE_MODEM:I = 0x2

.field public static final greylist TIMESTAMP_TYPE_OEM_RIL:I = 0x3

.field public static final greylist TIMESTAMP_TYPE_UNKNOWN:I = 0x0

.field public static final greylist-max-o TYPE_CDMA:I = 0x2

.field public static final greylist-max-o TYPE_GSM:I = 0x1

.field public static final greylist-max-o TYPE_LTE:I = 0x3

.field public static final blacklist TYPE_NR:I = 0x6

.field public static final blacklist TYPE_TDSCDMA:I = 0x5

.field public static final blacklist TYPE_UNKNOWN:I = 0x0

.field public static final greylist-max-o TYPE_WCDMA:I = 0x4

.field public static final whitelist UNAVAILABLE:I = 0x7fffffff

.field public static final whitelist UNAVAILABLE_LONG:J = 0x7fffffffffffffffL


# instance fields
.field private greylist-max-o mCellConnectionStatus:I

.field private greylist-max-o mRegistered:Z

.field private greylist-max-o mTimeStamp:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 310
    new-instance v0, Landroid/telephony/CellInfo$1;

    invoke-direct {v0}, Landroid/telephony/CellInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor greylist-max-o <init>()V
    .locals 3

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 161
    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    .line 162
    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    .line 163
    return-void
.end method

.method protected constructor blacklist <init>(IZJ)V
    .locals 0
    .param p1, "cellConnectionStatus"    # I
    .param p2, "registered"    # Z
    .param p3, "timestamp"    # J

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput p1, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    .line 154
    iput-boolean p2, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 155
    iput-wide p3, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    .line 156
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    .line 307
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/telephony/CellInfo;)V
    .locals 2
    .param p1, "ci"    # Landroid/telephony/CellInfo;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iget-boolean v0, p1, Landroid/telephony/CellInfo;->mRegistered:Z

    iput-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 168
    iget-wide v0, p1, Landroid/telephony/CellInfo;->mTimeStamp:J

    iput-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    .line 169
    iget v0, p1, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    iput v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    .line 170
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 255
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 256
    :cond_0
    instance-of v1, p1, Landroid/telephony/CellInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 257
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellInfo;

    .line 258
    .local v1, "cellInfo":Landroid/telephony/CellInfo;
    iget v3, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    iget v4, v1, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    iget-boolean v4, v1, Landroid/telephony/CellInfo;->mRegistered:Z

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    iget-wide v5, v1, Landroid/telephony/CellInfo;->mTimeStamp:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getCellConnectionStatus()I
    .locals 1

    .line 241
    iget v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    return v0
.end method

.method public abstract whitelist getCellIdentity()Landroid/telephony/CellIdentity;
.end method

.method public abstract whitelist getCellSignalStrength()Landroid/telephony/CellSignalStrength;
.end method

.method public whitelist getTimeStamp()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    return-wide v0
.end method

.method public whitelist getTimestampMillis()J
    .locals 4

    .line 192
    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 250
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isRegistered()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    return v0
.end method

.method public blacklist sanitizeLocationInfo()Landroid/telephony/CellInfo;
    .locals 1

    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o setCellConnectionStatus(I)V
    .locals 0
    .param p1, "cellConnectionStatus"    # I

    .line 245
    iput p1, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    .line 246
    return-void
.end method

.method public greylist-max-o setRegistered(Z)V
    .locals 0
    .param p1, "registered"    # Z

    .line 182
    iput-boolean p1, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    .line 183
    return-void
.end method

.method public greylist-max-o setTimeStamp(J)V
    .locals 0
    .param p1, "ts"    # J

    .line 209
    iput-wide p1, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    .line 210
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 265
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 267
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "mRegistered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    if-eqz v2, :cond_0

    const-string v2, "YES"

    goto :goto_0

    :cond_0
    const-string v2, "NO"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    const-string v1, " mTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "ns"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    const-string v1, " mCellConnectionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract whitelist writeToParcel(Landroid/os/Parcel;I)V
.end method

.method protected greylist-max-o writeToParcel(Landroid/os/Parcel;II)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .param p3, "type"    # I

    .line 292
    invoke-virtual {p1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-boolean v0, p0, Landroid/telephony/CellInfo;->mRegistered:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-wide v0, p0, Landroid/telephony/CellInfo;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 295
    iget v0, p0, Landroid/telephony/CellInfo;->mCellConnectionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    return-void
.end method
