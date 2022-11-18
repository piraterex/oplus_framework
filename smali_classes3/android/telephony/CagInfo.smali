.class public final Landroid/telephony/CagInfo;
.super Ljava/lang/Object;
.source "CagInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CagInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist UNAVAILABLE_LONG:J = 0x7fffffffffffffffL


# instance fields
.field private blacklist mCagId:J

.field private blacklist mCagInAllowedList:Z

.field private blacklist mCagName:Ljava/lang/String;

.field private blacklist mCagOnlyAccess:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 140
    new-instance v0, Landroid/telephony/CagInfo$1;

    invoke-direct {v0}, Landroid/telephony/CagInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CagInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    .line 77
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/telephony/CagInfo;->mCagId:J

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    .line 79
    iput-boolean v0, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    .line 80
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/CagInfo;->mCagId:J

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    .line 107
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CagInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CagInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;JZZ)V
    .locals 0
    .param p1, "cagName"    # Ljava/lang/String;
    .param p2, "cagId"    # J
    .param p4, "cagOnlyAccess"    # Z
    .param p5, "cagInAllowedList"    # Z

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    .line 93
    iput-wide p2, p0, Landroid/telephony/CagInfo;->mCagId:J

    .line 94
    iput-boolean p4, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    .line 95
    iput-boolean p5, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    .line 96
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 156
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 157
    return v0

    .line 159
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 160
    return v1

    .line 162
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/telephony/CagInfo;

    .line 163
    .local v2, "other":Landroid/telephony/CagInfo;
    iget-object v3, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroid/telephony/CagInfo;->mCagId:J

    iget-wide v5, v2, Landroid/telephony/CagInfo;->mCagId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    iget-boolean v4, v2, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    iget-boolean v4, v2, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public blacklist getCagId()J
    .locals 2

    .line 51
    iget-wide v0, p0, Landroid/telephony/CagInfo;->mCagId:J

    return-wide v0
.end method

.method public blacklist getCagInAllowedList()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    return v0
.end method

.method public blacklist getCagName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCagOnlyAccess()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 151
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/telephony/CagInfo;->mCagId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCagName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/CagInfo;->getCagName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCagId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/CagInfo;->getCagId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCagOnlyAccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {p0}, Landroid/telephony/CagInfo;->getCagOnlyAccess()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCagInAllowedList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/CagInfo;->getCagInAllowedList()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 131
    iget-object v0, p0, Landroid/telephony/CagInfo;->mCagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-wide v0, p0, Landroid/telephony/CagInfo;->mCagId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 133
    iget-boolean v0, p0, Landroid/telephony/CagInfo;->mCagOnlyAccess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 134
    iget-boolean v0, p0, Landroid/telephony/CagInfo;->mCagInAllowedList:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 135
    return-void
.end method
