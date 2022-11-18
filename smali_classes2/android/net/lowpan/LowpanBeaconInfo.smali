.class public Landroid/net/lowpan/LowpanBeaconInfo;
.super Ljava/lang/Object;
.source "LowpanBeaconInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanBeaconInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/lowpan/LowpanBeaconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_CAN_ASSIST:I = 0x1

.field public static final blacklist UNKNOWN_LQI:I = 0x0

.field public static final blacklist UNKNOWN_RSSI:I = 0x7fffffff


# instance fields
.field private blacklist mBeaconAddress:[B

.field private final blacklist mFlags:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIdentity:Landroid/net/lowpan/LowpanIdentity;

.field private blacklist mLqi:I

.field private blacklist mRssi:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBeaconAddress(Landroid/net/lowpan/LowpanBeaconInfo;)[B
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/net/lowpan/LowpanBeaconInfo;)Ljava/util/TreeSet;
    .locals 0

    iget-object p0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBeaconAddress(Landroid/net/lowpan/LowpanBeaconInfo;[B)V
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIdentity(Landroid/net/lowpan/LowpanBeaconInfo;Landroid/net/lowpan/LowpanIdentity;)V
    .locals 0

    iput-object p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLqi(Landroid/net/lowpan/LowpanBeaconInfo;I)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRssi(Landroid/net/lowpan/LowpanBeaconInfo;I)V
    .locals 0

    iput p1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Landroid/net/lowpan/LowpanBeaconInfo$1;

    invoke-direct {v0}, Landroid/net/lowpan/LowpanBeaconInfo$1;-><init>()V

    sput-object v0, Landroid/net/lowpan/LowpanBeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    .line 41
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    .line 114
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/lowpan/LowpanBeaconInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/lowpan/LowpanBeaconInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 179
    instance-of v0, p1, Landroid/net/lowpan/LowpanBeaconInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 180
    return v1

    .line 182
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/lowpan/LowpanBeaconInfo;

    .line 183
    .local v0, "rhs":Landroid/net/lowpan/LowpanBeaconInfo;
    iget-object v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    iget-object v3, v0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v2, v3}, Landroid/net/lowpan/LowpanIdentity;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    iget-object v3, v0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    .line 184
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    iget v3, v0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    iget v3, v0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    iget-object v3, v0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    .line 187
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 183
    :goto_0
    return v1
.end method

.method public blacklist getBeaconAddress()[B
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getFlags()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public blacklist getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    return-object v0
.end method

.method public blacklist getLqi()I
    .locals 1

    .line 125
    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    return v0
.end method

.method public blacklist getRssi()I
    .locals 1

    .line 121
    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    .line 174
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isFlagSet(I)Z
    .locals 2
    .param p1, "flag"    # I

    .line 137
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v1}, Landroid/net/lowpan/LowpanIdentity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 147
    const-string v1, ", RSSI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "dBm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_0
    iget v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    if-eqz v1, :cond_1

    .line 151
    const-string v1, ", LQI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 154
    :cond_1
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    array-length v1, v1

    if-lez v1, :cond_2

    .line 155
    const-string v1, ", BeaconAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-static {v2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    :cond_2
    iget-object v1, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 159
    .local v2, "flag":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 164
    const-string v3, ", FLAG_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 161
    :pswitch_0
    const-string v3, ", CAN_ASSIST"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    nop

    .line 167
    .end local v2    # "flag":Ljava/lang/Integer;
    :goto_1
    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 199
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mIdentity:Landroid/net/lowpan/LowpanIdentity;

    invoke-virtual {v0, p1, p2}, Landroid/net/lowpan/LowpanIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 200
    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mLqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mBeaconAddress:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 204
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-object v0, p0, Landroid/net/lowpan/LowpanBeaconInfo;->mFlags:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 206
    .local v1, "val":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    .end local v1    # "val":Ljava/lang/Integer;
    goto :goto_0

    .line 208
    :cond_0
    return-void
.end method
